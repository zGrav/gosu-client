'use strict';

function isValidAction(action) {
	if (!action.body) {
		global.robot.logger.warning('Action is missing body');
		return false;
	}

	if (!action.user_id) {
		global.robot.logger.warning('Action is missing user id');
		return false;
	}

	if (!action.channel) {
		global.robot.logger.warning('Action is missing channel');
		return false;
	}

	return true;
}

module.exports = isValidAction;
