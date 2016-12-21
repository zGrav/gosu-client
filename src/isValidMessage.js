'use strict';

function isValidMessage(msg) {
	if (!msg) {
		global.robot.logger.warning('Message is missing');
		return false;
	}

	if (!msg.body && !msg.deleted_timestamp) {
		global.robot.logger.warning('Message is missing body');
		return false;
	}

	if (!msg.user_id) {
		global.robot.logger.warning('Message is missing user id');
		return false;
	}

	if (!msg.channel) {
		global.robot.logger.warning('Message is missing channel');
		return false;
	}

	return true;
}

module.exports = isValidMessage;
