'use strict';

let request = require('request');

let WebSocket = require('websocket').w3cwebsocket;

let uuid = require('node-uuid');
let _ = require('lodash');

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

const TRIVIA_INTERVAL = 1000;
const IDLE_TRIVIA_INTERVAL = 120000;
let triviaWatcher = [];

let savedToken = null;

let failedPings = 0;
let pingTimer = {};
let messageTimer = {};
let retryTimer = false;
let pingInterval = null;
let curRetries = 0;
let conn = null;

let messageIDs = [];

let Class = function(methods) {
	try {
		let classconstructor = function() {
			this.initialize.apply(this, arguments);
		};

		for (let property in methods) {
		   classconstructor.prototype[property] = methods[property];
		}

		if (!classconstructor.prototype.initialize) classconstructor.prototype.initialize = function(){};

		return classconstructor;
	} catch (e) {
		console.log('classconstructor exception')
		console.log(e)
	}
};

let Client = Class({

    chatHandshake: function(token) {
		try {
			savedToken = token;

			request({
				headers: {
				  'Content-Type': 'application/json',
				  'X-Token': token,
				},
				uri: global.api + '/chat/handshake',
				method: 'GET',
			  }, function (err, res, body) {
				  if (err) {
					  chatHandshakeResult(err);
					  return false;
				  } else {
					  let uri = res.body.replace('\n', '');
					  uri = uri.replace('!', '');
					  uri = uri.substr(uri.indexOf(':') + 1);
					  uri = 'wss:' + uri;

					  chatHandshakeResult(null, uri, token);
				  }
			  });
		} catch (e) {
			console.log('chatHandshake exception')
			console.log(e)
		}
	},
});

function chatHandshakeResult(err, uri, token) {
	try {
		if (err) {
			global.robot.logger.error('Handshake error: ' + err);
		} else {
			global.robot.logger.info('Handshake okay! Opening WS!');

			conn = new WebSocket(uri, token);

			conn.binaryType = 'arraybuffer';

			conn.onopen = function() { onConnectionOpened(); };
			conn.onclose = function() { onConnectionClosed(); };
			conn.onerror = function() { onConnectionError(); };
			conn.onmessage = function(evt) { handleMessageEvent(evt); };
		}
	} catch (e) {
		console.log('chatHandshakeResult exception')
		console.log(e)
	}
}

function onConnectionOpened() {
	try {
		global.robot.logger.info('WS established!');

		if (pingInterval !== null) {
			clearInterval(pingInterval);
		}

		pingInterval = setInterval(sendPingMessage, PING_INTERVAL);

		setInterval(startTrivia, TRIVIA_INTERVAL);
	} catch (e) {
		console.log('onConnectionOpened exception')
		console.log(e)
	}
}

function onConnectionClosed() {
	try {
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
	} catch (e) {
		console.log('onConnectionClosed exception')
		console.log(e)
	}
}

function onConnectionError() {
	try {
		if (conn.readyState === WebSocket.OPEN) {
			global.robot.logger.error('WS error, closing and retrying!');
		} else {
			global.robot.logger.error('WS error, just retrying since WS is already closed!');
		}

		onConnectionClosed();
	} catch (e) {
		console.log('onConnectionError exception')
		console.log(e)
	}
}

function handleMessageEvent(evt) {
	try {
		if (evt) {
			if (evt.type === 'message') {
				const wrapper = MessageWrapper.decode(evt.data)
					.toRaw();

				let message;

				if (wrapper) {
					switch (wrapper.type) {
						case 'CHAT_MESSAGE':
							wrapper.type = MessageType.CHAT_MESSAGE;
							message = onReceiveChatMessage(wrapper);

							if (message) {
								let idx = findKeyIndex(triviaWatcher, 'chid', message.channel);
								let getTitle = findKeyIndex(global.channels_by_index, 'id', message.channel);

								if (global.channels_by_index[getTitle].type !== ChannelType.DIRECT) {
									if (idx !== null) {
										global.robot.logger.info('Updating ts to triviaWatcher from channel with ID: ' + message.channel + ' and title: ' + global.channels_by_index[getTitle].title);
										triviaWatcher[idx].ts = message.timestamp;
									} else {
										global.robot.logger.info('Pushing chid/ts to triviaWatcher from channel with ID: ' + message.channel + ' and title: ' + global.channels_by_index[getTitle].title);
										triviaWatcher.push({chid: message.channel, ts: message.timestamp});
									}
								}
							}
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
				}

				if (message) {
					message.error = false;
					message.preview = false;
					clearMessageTimer(message.id);

					if (messageIDs.indexOf(message.id) > -1) {
						messageIDs = []
						return true;
					}
					else {
						messageIDs.push(message.id);
					}

					emitToHubot(message, wrapper);
					}
				}
		}
	} catch (e) {
		console.log('handleMessageEvent exception')
		console.log(e)
	}
}

function emitToHubot(message, wrapper) {
	try {
		if (wrapper.type === MessageType.SYSTEM_MESSAGE) {
			let channelId = message.channel;
			let getChannelIndex = findKeyIndex(global.channels_by_index, 'id', channelId);
			let account = {name: message.user.display_name, account_id: message.user.id, is_moderator: message.user.is_moderator};
			let obj = {message_id: message.id, account: account, body: message.body, send_time: message.timestamp, update_time: message.timestamp};

			if (message.type === 'USER_LEFT') {
				global.robot.logger.info('New WS system message/USER_LEFT! (in channel with id: ' + channelId + ' & title ' + global.channels_by_index[getChannelIndex].title +')');
				obj.body = global.robot.name + ' user_left';
				global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
			} else if (message.type === 'USER_JOINED') {
				global.robot.logger.info('New WS system message/USER_JOINED! (in channel with id: ' + channelId + ' & title ' + global.channels_by_index[getChannelIndex].title +')');
				obj.body = global.robot.name + ' user_joined';
				global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
			}
		}
		if (wrapper.type === MessageType.CHAT_MESSAGE) {
			let channelId = message.channel;
			let account = {name: message.user.display_name, account_id: message.user.id, is_moderator: message.user.is_moderator};
			let obj = {message_id: message.id, account: account, body: message.body, send_time: message.timestamp, update_time: message.timestamp};

			let searchstr = null;
			let bodyidx = null;
			let searchstrlength = null;

			if (message.body_annotations) {
				message.body_annotations.map(function(key) {
					if (key.type === 'USER_MENTION') {
						if (key.target === global.user_id) {
							searchstr = '@' + global.display_name.toLowerCase() + ':';
							bodyidx = obj.body.toLowerCase().indexOf(searchstr);
							searchstrlength = global.display_name.length + 3;

							if (bodyidx === -1) {
								searchstr = '@' + global.display_name.toLowerCase();
								bodyidx = obj.body.toLowerCase().indexOf(searchstr);
								searchstrlength = global.display_name.length + 2;
							} else if (bodyidx === -1) {
								searchstr = ' @' + global.display_name.toLowerCase();
								bodyidx = obj.body.toLowerCase().indexOf(searchstr);
							}
						}
					}
				});
			}

			let hardcodedcmds = ['join community'];
			let searchresult = null;
			let communityURL = null;

			for (let i = 0; i < hardcodedcmds.length; i++) {
				let arrstr = hardcodedcmds[i];
				let searchstr = obj.body.search(arrstr);
				if (searchstr !== -1) {
					searchresult = i;
				}
			}

			if (message.website !== null) {
				communityURL = message.website.url;
			}

			let getChannelIndex = findKeyIndex(global.channels_by_index, 'id', channelId);
			let getChannelType = null;

			if (getChannelIndex !== null) {
				getChannelType = global.channels_by_index[getChannelIndex].type;
			} else {
				global.robot.http(global.api + ('channel' + channelId + '/')).headers({
				  'Accept': 'application/json',
				  'Content-Type': 'application/json',
				  'X-Token': global.user_token,
				}).get()(function(err, res, body) {
				  try {
					let result = JSON.parse(body);

					getChannelType = result.channel.type;

					if (getChannelType === ChannelType.DIRECT) {
						global.robot.logger.info('New WS chat message! (in direct channel (not in global.channels_by_index) with id: ' + channelId + ')');
						obj.body = obj.body.toLowerCase();

						if (searchresult !== null && communityURL !== null) {
							obj.body = global.robot.name + ' ' + obj.body + ' direct'; // hardcoded to disallow join community via DM channels due to permissions
							global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
						} else if (searchresult === null) {
							obj.body = global.robot.name + ' ' + obj.body;
							global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
						}
					}

					return;
				  } catch (err) {
					return global.robot.logger.error('Oh no! We errored :( - ' + err + ' - API Response Code: ' + res.statusCode);
				  }
				});
			}

			if (getChannelType === ChannelType.DIRECT) {
				global.robot.logger.info('New WS chat message! (in direct channel with id: ' + channelId + ' & title ' + global.channels_by_index[getChannelIndex].title + ')');

				obj.body = obj.body.toLowerCase();

				if (searchresult !== null && communityURL !== null) {
					obj.body = global.robot.name + ' ' + obj.body + ' direct'; // hardcoded to disallow join community via DM channels due to permissions
					global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
				} else if (searchresult === null) {
					obj.body = global.robot.name + ' ' + obj.body;
					global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
				}
			} else if (bodyidx === 0 && getChannelType !== ChannelType.DIRECT) {
				global.robot.logger.info('New WS chat message! (in channel with id: ' + channelId + ' & title ' + global.channels_by_index[getChannelIndex].title +')');

				obj.body = obj.body.toLowerCase();
				obj.body = obj.body.replace(searchstr, searchstr + ' ' + global.robot.name);
				obj.body = obj.body.substring(obj.body.length, searchstrlength);

				if (communityURL !== null) {
					obj.body += ' ' + communityURL;
				}

				global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
			} else if (bodyidx > 0 && getChannelType !== ChannelType.DIRECT) {
				global.robot.logger.info('New WS chat message! (in channel with id: ' + channelId + ' & title ' + global.channels_by_index[getChannelIndex].title +')');

				if (communityURL !== null) {
					obj.body = global.robot.name + ' ' + obj.body + communityURL;
				} else {
					obj.body = global.robot.name + ' ' + obj.body;
				}

				obj.body = obj.body.toLowerCase();
				obj.body = obj.body.replace(', ' + searchstr, '');
				obj.body = obj.body.replace(searchstr, '');

				global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
			}
		}
	} catch (e) {
		console.log('emitToHubot exception')
		console.log(e)
	}
}

function findKeyIndex(arr, key, val) {
	try {
		let i = 0;
		while (i < arr.length) {
		  if (arr[i][key] === val) {
			return i;
		  }
		  i++;
		}
		return null;
	} catch (e) {
		console.log('findKeyIndex exception')
		console.log(e)
	}
}

function onReceiveChatMessage(wrapper) {
	try {
		const msg = flattenMessageWrapper(wrapper);

		if (!msg) {
			return null;
		}

		if (msg.body_annotations.length > 0) {
			msg.body_annotations.map(function(keys) {
				if (keys.type !== 'USER_MENTION' || keys.type !== 'WEB_LINK') {
					return null; //because bot isn't really supposed to reply to anything else except these... as of now.
				}
			});
		}

		return msg;
	} catch (e) {
		console.log('onReceiveChatMessage exception')
	}
}

function onReceiveSystemMessage(wrapper) {
	try {
		const msg = flattenSystemMessage(wrapper);

		if (!msg) {
			return null;
		}

		if (msg.type === 'USER_LEFT' || msg.type === 'USER_JOINED') {
			return msg;
		} else {
			return null; //because bot isn't really supposed to reply to anything else except these... as of now.
		}
	} catch (e) {
		console.log('onReceiveSystemMessage exception')
		console.log(e)
	}
}

function onReceivePingResponse(wrapper) {
	try {
		global.robot.logger.info('Received ping response: ' + wrapper.id);

		if (pingTimer[wrapper.id]) {
			failedPings = 0;
			clearTimeout(pingTimer[wrapper.id]);
			pingTimer[wrapper.id] = null;
		}
	} catch (e) {
		console.log('onReceivePingResponse exception')
		console.log(e)
	}
}

function clearMessageTimer(id) {
	try {
		if (messageTimer[id]) {
			clearTimeout(messageTimer[id]);
			messageTimer[id] = undefined;
		}
	} catch (e) {
		console.log('clearMessageTimer exception')
		console.log(e)
	}
}

function startTrivia() {
	try {
		if (conn.readyState !== WebSocket.OPEN) {
			global.robot.logger.warning('Trying to start trivia on closed websocket');
			return;
		}

		for (let i = 0; i < triviaWatcher.length; i++) {
			const lastts = new Date(triviaWatcher[i].ts * 1000);
			const twominutes = new Date(Date.now() - IDLE_TRIVIA_INTERVAL);

			if ((Math.floor(lastts.getTime() / 1000) > Math.floor(twominutes.getTime() / 1000) === false)) {
				sendTriviaMessage(triviaWatcher[i].chid);
				triviaWatcher.splice(triviaWatcher[i], 1);
			}
		}
	} catch (e) {
		console.log('startTrivia exception')
		console.log(e)
	}
}

function sendTriviaMessage(channelId) {
	try {
		if (conn.readyState !== WebSocket.OPEN) {
			global.robot.logger.warning('Trying to send trivia message on closed websocket');
			return;
		}

		let account = {name: global.username, account_id: global.user_id};
		let obj = {message_id: uuid.v4(), account: account, body: global.robot.name + ' trivia', send_time: Math.floor(Date.now() / 1000), update_time: Math.floor(Date.now() / 1000)};

		global.robot.emit('message', channelId, obj.message_id, obj.account, obj.body, obj.send_time, obj.update_time);
	} catch (e) {
		console.log('sendTriviaMessage exception')
		console.log(e)
	}
}

function sendPingMessage() {
	try {
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
	} catch (e) {
		console.log('sendPingMessage exception')
		console.log(e)
	}
}

function onPingFailed(id) {
	try {
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
	} catch (e) {
		console.log('onPingFailed exception')
		console.log(e)
	}
}

function clearPingTimer() {
	try {
		if (!pingTimer) {
			return;
		}

		Object.keys(pingTimer).forEach(key => {
			if (pingTimer.hasOwnProperty(key)) {
				clearTimeout(pingTimer[key]);
			}
		});

		pingTimer = {};
	} catch (e) {
		console.log('clearPingTimer exception')
		console.log(e)
	}
}

function scheduleConnectionRetry() {
	try {
		const timer = exponentialBackoff(curRetries);

		if (!retryTimer) {
			retryTimer = setTimeout(() => {
				retryTimer = false;
				global.robot.logger.info('Retrying handshake and connection!');
				let C = new Client;
				C.chatHandshake(savedToken);
			}, timer);

			curRetries++;
		}
	} catch (e) {
		console.log('scheduleConnectionRetry exception')
		console.log(e)
	}
}

function exponentialBackoff(c) {
	try {
		const max = Math.pow(2, c) - 1;
		const backoff = BACKOFF_INTERVAL * _.random(max);

		return Math.min(backoff, MAX_BACKOFF_INTERVAL);
	} catch (e) {
		console.log('exponentialBackoff exception')
		console.log(e)
	}
}

module.exports = Client;
