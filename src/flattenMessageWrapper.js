'use strict';

let Message = require('./proto').Message;
let MessageType = require('./proto').Message.WebsocketMessage.MessageType;
let isValidMessage = require('./isValidMessage');
let isValidAction = require('./isValidAction');
let convertLegacyMessageTypes = require('./convertLegacyMessageTypes');

let BodyAnnotation = Message.MessageBodyAnnotation;
let AnnotationTypes = BodyAnnotation.SliceType;

function getMessageBody(wrapper) {
	if (wrapper.type === MessageType.CHAT_MESSAGE) {
		return wrapper.user_message;
	} else if (wrapper.type === MessageType.USER_ACTION) {
		return wrapper.user_action;
	} else if (wrapper.type === MessageType.SYSTEM_MESSAGE) {
		return wrapper.system_message;
	}

	return null;
}

function validateMessage(msg) {
	if (msg.type === MessageType.CHAT_MESSAGE) {
		return isValidMessage(msg);
	} else if (msg.type === MessageType.USER_ACTION) {
		return isValidAction(msg);
	}


	return true;
}

function flattenMessageWrapper(wrapper) {
	let msg = getMessageBody(wrapper);

	if (!msg) {
		global.robot.logger.warning('Cannot flatten unknown message type', wrapper.type);
		return null;
	}

	if (wrapper.type === MessageType.CHAT_MESSAGE) {
		msg = convertLegacyMessageTypes(msg);
	}

	msg.raw_message = wrapper;
	msg.processed_by_crawler = wrapper.processed_by_crawler;
	msg.id = wrapper.id;
	msg.timestamp = wrapper.timestamp;
	msg.channel = wrapper.channel;
	msg.user_id = wrapper.sender;
	msg.msg_type = wrapper.type;
	msg.msg_sub_type = msg.type;
	msg.deleted = wrapper.deleted;

	msg.error = false;
	msg.preview = false;

	if (msg.user_id === global.user_id) { //ignore self messages
		return null;
	}

	if (!validateMessage(msg) && !wrapper.forceValidMessage) {
		global.robot.logger.warning('Discard invalid chat message', msg);
		return null;
	}

	if (msg.body_annotations && msg.body_annotations.find((element) => {
		return element.target === msg.recipient && element.type === AnnotationTypes.USER_MENTION;
	})) {
		msg.mentiones_recipient = true;
	}

	return msg;
}

module.exports = flattenMessageWrapper;
