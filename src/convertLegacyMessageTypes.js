'use strict';


function convertLegacyMessageTypes(msg) {
	// check for single image attachments
	const attachments = msg.attachments;
	if (attachments && attachments.length > 0) {
		const attachment = attachments[0];
		const image = attachment.image;

		if (image) {
			msg.type = 'IMAGE';
			msg.body = image;
			delete msg.body_annotations;
			delete msg.website;
			clearAttachmentsExceptReplyTo(msg);
		}

		const gallery = attachment.gallery;
		if (gallery) {
			msg.type = 'IMAGE_GALLERY';
			msg.body = gallery;
			delete msg.body_annotations;
			delete msg.website;
			clearAttachmentsExceptReplyTo(msg);
		}
	}

	return msg;
}

function clearAttachmentsExceptReplyTo(message) {
	const attachments = message.attachments;
	if (!attachments || attachments.length === 0) {
		return;
	}
	const filteredAttachments = attachments.filter((attachment) => {
		if (attachment.type === 'REPLY_TO') {
			return true;
		}
		return false;
	});
	message.attachments = filteredAttachments;
}

module.exports = convertLegacyMessageTypes;
