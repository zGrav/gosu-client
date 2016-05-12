'use strict';

let Constants = require('./constants');

let request = require('request');

let WebSocket = require('websocket').w3cwebsocket;

let uuid = require('node-uuid');
let _ = require('lodash');

let Api = require('./proto').Api;
let MessageWrapper = require('./proto').Message.WebsocketMessage;
let MessageType = require('./proto').Message.WebsocketMessage.MessageType;

let flattenMessageWrapper = require('./flattenMessageWrapper')

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
        let url = Constants.Endpoint + '/chat/handshake';

        request({
            headers: {
              'Content-Type': 'application/x-protobuf',
              'X-Token': token
            },
            uri: Constants.Endpoint + '/chat/handshake',
            method: 'GET'
          }, function (err, res, body) {
              if (err) {
                  chatHandshakeResult(err);
              } else {
                  //let uri = ChatHandshake.decode(res.body)
                  //.toRaw();
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
        return false;
    } else {
        global.robot.logger.info("Handshake okay! Opening WS!");

        conn = new WebSocket(uri, token);

        conn.binaryType = 'arraybuffer';

        conn.onopen = function() { onConnectionOpened(); };
        conn.onclosed = function() { onConnectionClosed(); };
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
    if (conn.readyState === WebSocket.OPEN) {
        global.robot.logger.info('WS closed!');

        conn.close();
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
            //this.enqueueMessage(message);
        }
    }
}

function onReceiveChatMessage(wrapper) {
    global.robot.logger.info('New WS chat message!');

    const msg = flattenMessageWrapper(wrapper);

    if (!msg) {
        return null;
    }

    return msg;
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
    _.forIn(pingTimer, function(value, key) {
        clearTimeout(value);
        pingTimer[key] = null;
    }.bind(this));
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
