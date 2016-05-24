'use strict';

let MessageType = require('./proto').Message.WebsocketMessage.MessageType;

function flattenSystemMessage(wrapper) {
	const msg = wrapper.system_message;
	msg.id = wrapper.id;
	if (!msg.channel) {
		msg.channel = wrapper.channel;
	}
	if (msg.user_id === global.user_id) { //ignore self messages
		return null;
	}
	msg.timestamp = wrapper.timestamp;
	msg.msg_type = MessageType.SYSTEM_MESSAGE;

	return msg;
}

module.exports = flattenSystemMessage;
