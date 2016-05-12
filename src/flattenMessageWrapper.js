'use strict';

let Immutable = require('immutable');
let MessageType = require('./proto').Message.WebsocketMessage.MessageType;
let isValidMessage = require('./isValidMessage');

function getMessageBody(wrapper) {
	if (wrapper.type === MessageType.CHAT_MESSAGE) {
		return wrapper.user_message;
	}

	return null;
}

function validateMessage(msg) {
	if (msg.type === MessageType.CHAT_MESSAGE) {
		return isValidMessage(msg);
	}

	return true;
}

function flattenMessageWrapper(wrapper) {
	let msg = getMessageBody(wrapper);

	if (!msg) {
		global.robot.logger.warning('Cannot flatten unknown message type', wrapper.type);
		return null;
	}

	msg.processed_by_crawler = wrapper.processed_by_crawler;
	msg.id = wrapper.id;
	msg.timestamp = wrapper.timestamp;
	msg.channel = wrapper.channel;
	msg.user_id = wrapper.sender;
	msg.msg_type = wrapper.type;
	msg.deleted = wrapper.deleted;

	if (!validateMessage(msg) && !wrapper.forceValidMessage) {
		global.robot.logger.warning('Discard invalid chat message', msg);
		return null;
	}

	return msg;
}

module.exports = flattenMessageWrapper;
