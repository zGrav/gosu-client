'use strict';

let request = require('request');

let WebSocket = require('websocket').w3cwebsocket;

let uuid = require('node-uuid');
let _ = require('lodash');

let Api = require('./proto').Api;
let MessageWrapper = require('./proto').Message.WebsocketMessage;
let MessageType = require('./proto').Message.WebsocketMessage.MessageType;
let ChannelType = require('./proto').Profile.Channel.ChannelType;

let flattenMessageWrapper = require('./flattenMessageWrapper');
let flattenSystemMessage = require('./flattenSystemMessage');

const PING_TIMEOUT = 1000 * 10;
const PING_INTERVAL = (PING_TIMEOUT * 9) / 10;
const MAX_FAILED_PINGS = 1;
const MAX_BACKOFF_INTERVAL = 1000 * 60 * 2;
const BACKOFF_INTERVAL = 1000;

let savedToken = null;

let failedPings = 0;
let pingTimer = {};
let messageTimer = {};
let retryTimer = false;
let pingInterval = null;
let curRetries = 0;
let conn = null;

let Class = function(methods) {
    let classconstructor = function() {
        this.initialize.apply(this, arguments);
    };

    for (let property in methods) {
       classconstructor.prototype[property] = methods[property];
    }

    if (!classconstructor.prototype.initialize) classconstructor.prototype.initialize = function(){};

    return classconstructor;
};

let Client = Class({

    chatHandshake: function(token) {
        savedToken = token;

        let ChatHandshake = Api.ChatHandshakeResponse;
        let url = global.api + '/chat/handshake';

        request({
            headers: {
              'Content-Type': 'application/json',
              'X-Token': token
            },
            uri: global.api + '/chat/handshake',
            method: 'GET'
          }, function (err, res, body) {
              if (err) {
                  chatHandshakeResult(err);
                  return false;
              } else {
                  let uri = res.body.replace('\n', '');
                  uri = uri.replace('!', '');
                  uri = uri.substr(uri.indexOf(":") + 1);
                  uri = "wss:" + uri;

                  chatHandshakeResult(null, uri, token);
              }
          });
    }
});

function chatHandshakeResult(err, uri, token) {
    if (err) {
        global.robot.logger.error("Handshake error: " + err);
    } else {
        global.robot.logger.info("Handshake okay! Opening WS!");

        conn = new WebSocket(uri, token);

        conn.binaryType = 'arraybuffer';

        conn.onopen = function() { onConnectionOpened(); };
        conn.onclose = function() { onConnectionClosed(); };
        conn.onerror = function() { onConnectionError(); };
        conn.onmessage = function(evt) { handleMessageEvent(evt); };
    }
}

function onConnectionOpened() {
    global.robot.logger.info('WS established!');

    if (pingInterval !== null) {
        clearInterval(pingInterval);
    }

    pingInterval = setInterval(sendPingMessage, PING_INTERVAL);

}

function onConnectionClosed() {
    if (conn && conn.readyState === WebSocket.OPEN) {
        global.robot.logger.info('WS closed!');

        conn.close();
    } else if (conn && conn.readyState === WebSocket.CLOSED) {
        global.robot.logger.warning('WS was already closed!')
    }

    clearPingTimer();

    if (pingInterval !== null) {
        clearInterval(pingInterval);
    }

    conn = null;

    scheduleConnectionRetry();
}

function onConnectionError() {
    if (conn.readyState === WebSocket.OPEN) {
        global.robot.logger.error('WS error, closing and retrying!');
    } else {
        global.robot.logger.error('WS error, just retrying since WS is already closed!');
    }

    onConnectionClosed();
}

function handleMessageEvent(evt) {
    if (evt.type === 'message') {
        const wrapper = MessageWrapper.decode(evt.data)
            .toRaw();

        let message;
        switch (wrapper.type) {
            case 'CHAT_MESSAGE':
                wrapper.type = MessageType.CHAT_MESSAGE;
                message = onReceiveChatMessage(wrapper);
                break;
            case 'SYSTEM_MESSAGE':
                wrapper.type = MessageType.SYSTEM_MESSAGE;
                message = onReceiveSystemMessage(wrapper);
                break;
            case 'PING':
                wrapper.type = MessageType.PING;
                onReceivePingResponse(wrapper);
                return;
            default:
        }

        if (message) {
            message.error = false;
            message.preview = false;
            clearMessageTimer(message.id);
            let checkForSpamResult = checkForSpam(message, wrapper);
            if (!checkForSpamResult) {
                emitToHubot(message, wrapper);
            } else {
                let isLoaded = false;

                for (let i = 0; i < global.robot.listeners.length; i++) {
                    let str = global.robot.listeners[i].regex.toString();
                    if (str.startsWith('/spamscript')) {
                        isLoaded = true;
                        break;
                    }
                }

                if (isLoaded) {
                    global.robot.logger.warning("Spammy message caught of type: " + checkForSpamResult + ", sending timeout in channel " + message.channel + "to user: " + message.user.display_name + " ! - Content: " + message.body)

                    let channelId = message.channel;
                    let account = {name: message.user.display_name, account_id: message.user.id};
                    let obj = {message_id: message.id, account: account, body: checkForSpamResult, send_time: message.timestamp, update_time: message.timestamp};
                    global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
                } else {
                    global.robot.logger.warning("Module not loaded but a Spammy message caught of type: " + checkForSpamResult + ", in channel " + message.channel + "from user: " + message.user.display_name + " ! - Content: " + message.body)

                    emitToHubot(message, wrapper);
                }
            }
        }
    }
}

function checkForSpam(message, wrapper) {
    //todo: proper/better random text detection

    if (wrapper.type === MessageType.CHAT_MESSAGE) {
        let numUpper = message.body.length - message.body.replace(/[A-Z]/g, '').length;
        let numLower = message.body.length - message.body.replace(/[a-z]/g, '').length;

        if ((/^[A-Z]*$/).test(message.body) && message.body.length >= 3) {
            return 'spamscript: capslock';
        }

        if (numUpper > numLower && message.body.length >= 3) {
            return 'spamscript: uppercase > lowercase';
        }

        if ((/(.+){5,}(?=\1+)[^A-Za-z0-9]/i).test(message.body)) {
            return 'spamscript: emoji repetition';
        }

        if ((/(^|\s+)(\S+)(($|\s+)\2)+/ig).test(message.body)) {
            return 'spamscript: word repetition';
        }

        if ((/^(.{3}).*\1$/i).test(message.body)) {
            return 'spamscript: word repetition';
        }

        if ((/^([a-z])\1+$/i).test(message.body)) {
            return 'spamscript: letter repetition';
        }

        if ((/^([a-zA-Z])\1+$/).test(message.body)) {
            return 'spamscript: letter repetition';
        }

        if ((/\b[A-Za-z]{18,}\b/).test(message.body)) {
            return 'spamscript: random text';
        }
    }

    return false;
}

function emitToHubot(message, wrapper) {
    if (wrapper.type === MessageType.SYSTEM_MESSAGE) {
        let channelId = message.channel;
        let account = {name: message.user.display_name, account_id: message.user.id};
        let obj = {message_id: message.id, account: account, body: message.body, send_time: message.timestamp, update_time: message.timestamp};

        if (message.type === 'USER_LEFT') {
            global.robot.logger.info('New WS system message/USER_LEFT!');
            obj.body = global.robot.name + ' user_left';
            global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
        } else if (message.type === 'USER_JOINED') {
            global.robot.logger.info('New WS system message/USER_JOINED!');
            obj.body = global.robot.name + ' user_joined';
            global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
        }
    }
    if (wrapper.type === MessageType.CHAT_MESSAGE) {
        let channelId = message.channel;
        let account = {name: message.user.display_name, account_id: message.user.id};
        let obj = {message_id: message.id, account: account, body: message.body, send_time: message.timestamp, update_time: message.timestamp};

        let searchstr = "@" + global.display_name + ":";
        let bodyidx = obj.body.indexOf(searchstr);
        let searchstrlength = global.display_name.length + 3;

        if (bodyidx === -1) {
            searchstr = "@" + global.display_name;
            bodyidx = obj.body.indexOf(searchstr);
            searchstrlength = global.display_name.length + 2;
        } else if (bodyidx === -1) {
            searchstr = " @" + global.display_name;
            bodyidx = obj.body.indexOf(searchstr);
        }

        let hardcodedcmds = ['join community'];
        let searchresult = null;

        for (let i = 0; i < hardcodedcmds.length; i++) {
            let arrstr = hardcodedcmds[i];
            let searchstr = obj.body.search(arrstr);
            if (searchstr !== -1) {
                searchresult = i;
            }
        }

        let getChannelIndex = findKeyIndex(global.channels_by_index, 'id', channelId);
        let getChannelType = null;

        if (getChannelIndex !== null) {
            getChannelType = global.channels_by_index[getChannelIndex].type;
        } else {
            global.robot.http(global.api + ("/channel/" + channelId + "/")).headers({
              'Accept': 'application/json',
              'Content-Type': 'application/json',
              'X-Token': global.user_token
            }).get()(function(err, res, body) {
              try {
                let result = JSON.parse(body);

                getChannelType = result.channel.type;

                if (searchresult !== null && getChannelType === ChannelType.DIRECT || getChannelType === ChannelType.DIRECT) {
                    global.robot.logger.info('New WS chat message! (in direct channel (not in global.channels_by_index) with id: ' + channelId + ')');
                    obj.body = obj.body.toLowerCase();
                    obj.body = global.robot.name + " " + obj.body;
                    global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
                }

                return;
              } catch (err) {
                return global.robot.logger.error("Oh no! We errored :( - " + err + " - API Response Code: " + res.statusCode);
              }
            });
        }

        if (searchresult !== null && getChannelType === ChannelType.DIRECT || getChannelType === ChannelType.DIRECT) {
            global.robot.logger.info('New WS chat message! (in direct channel with id: ' + channelId + ')');
            obj.body = obj.body.toLowerCase();
            obj.body = global.robot.name + " " + obj.body;
            global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
        } else if (bodyidx === 0 && getChannelType !== ChannelType.DIRECT) {
            global.robot.logger.info('New WS chat message!');
            obj.body = obj.body.replace(searchstr, searchstr + " " + global.robot.name);
            obj.body = obj.body.substring(obj.body.length, searchstrlength);
            global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
        } else if (bodyidx > 0 && getChannelType !== ChannelType.DIRECT) {
            global.robot.logger.info('New WS chat message!');
            obj.body = global.robot.name + " " + obj.body;
            obj.body = obj.body.replace(", " + searchstr, "");
            obj.body = obj.body.replace(searchstr, "");
            global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
        }
    }
}

function findKeyIndex(arr, key, val) {
    let i = 0;
    while (i < arr.length) {
      if (arr[i][key] === val) {
        return i;
      }
      i++;
    }
    return null;
}

function onReceiveChatMessage(wrapper) {
    const msg = flattenMessageWrapper(wrapper);

    if (!msg) {
        return null;
    }

    if (msg.body_annotations.length > 0) {
        let result = msg.body_annotations.map(function(keys) {
            if (keys.type !== 'USER_MENTION') {
                return null; //because bot isn't really supposed to reply to anything else except these... as of now.
            }
        });
    }

    return msg;
}

function onReceiveSystemMessage(wrapper) {
    const msg = flattenSystemMessage(wrapper);

    if (!msg) {
        return null;
    }

    if (msg.type === 'USER_LEFT' || msg.type === 'USER_JOINED') {
        return msg;
    } else {
        return null; //because bot isn't really supposed to reply to anything else except these... as of now.
    }
}

function onReceivePingResponse(wrapper) {
    global.robot.logger.info('Received ping response: ' + wrapper.id);

    if (pingTimer[wrapper.id]) {
        failedPings = 0;
        clearTimeout(pingTimer[wrapper.id]);
        pingTimer[wrapper.id] = null;
    }
}

function clearMessageTimer(id) {
    if (messageTimer[id]) {
        clearTimeout(messageTimer[id]);
        messageTimer[id] = undefined;
    }
}

function sendPingMessage() {
    if (conn.readyState !== WebSocket.OPEN) {
        global.robot.logger.warning('Trying to send ping on closed websocket');
        onPingFailed();
        return;
    }

    const wrapper = new MessageWrapper();

    wrapper.id = uuid.v4();
    wrapper.type = MessageType.PING;

    global.robot.logger.info('Trying to send ping on open websocket');

    conn.send(wrapper.toArrayBuffer());

    pingTimer[wrapper.id] = setTimeout(onPingFailed, PING_TIMEOUT,wrapper.id);
}

function onPingFailed(id) {
    if (id) {
        clearTimeout(pingTimer[id]);
        pingTimer[id] = null;
    }

    global.robot.logger.warning('Ping timeout');

    failedPings++;

    if (failedPings >= MAX_FAILED_PINGS && conn) {
        clearPingTimer();

        global.robot.logger.error('closing connection because of too many failed pings');

        conn.close();
        onConnectionClosed();
    }
}

function clearPingTimer() {
    if (!pingTimer) {
        return;
    }

    Object.keys(pingTimer).forEach(key => {
        if (pingTimer.hasOwnProperty(key)) {
            clearTimeout(pingTimer[key]);
        }
    });

    pingTimer = {};
}

function scheduleConnectionRetry() {
    const timer = exponentialBackoff(curRetries);

    if (!retryTimer) {
        retryTimer = setTimeout(() => {
            retryTimer = false;
            global.robot.logger.info("Retrying handshake and connection!");
            let C = new Client;
            C.chatHandshake(savedToken);
        }, timer);

        curRetries++;
    }
}

function exponentialBackoff(c) {
	const max = Math.pow(2, c) - 1;
	const backoff = BACKOFF_INTERVAL * _.random(max);

	return Math.min(backoff, MAX_BACKOFF_INTERVAL);
}

module.exports = Client;
