// Code generated by protoc-gen-go.
// source: message.proto
// DO NOT EDIT!

package gosuproto

import proto "github.com/golang/protobuf/proto"

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal

type WebsocketMessage_MessageType int32

const (
	WebsocketMessage_UNKNOWN        WebsocketMessage_MessageType = 0
	WebsocketMessage_CHAT_MESSAGE   WebsocketMessage_MessageType = 1
	WebsocketMessage_USER_ACTION    WebsocketMessage_MessageType = 2
	WebsocketMessage_SYSTEM_MESSAGE WebsocketMessage_MessageType = 3
	WebsocketMessage_PING           WebsocketMessage_MessageType = 4
	WebsocketMessage_SYSTEM_ACTION  WebsocketMessage_MessageType = 5
)

var WebsocketMessage_MessageType_name = map[int32]string{
	0: "UNKNOWN",
	1: "CHAT_MESSAGE",
	2: "USER_ACTION",
	3: "SYSTEM_MESSAGE",
	4: "PING",
	5: "SYSTEM_ACTION",
}
var WebsocketMessage_MessageType_value = map[string]int32{
	"UNKNOWN":        0,
	"CHAT_MESSAGE":   1,
	"USER_ACTION":    2,
	"SYSTEM_MESSAGE": 3,
	"PING":           4,
	"SYSTEM_ACTION":  5,
}

func (x WebsocketMessage_MessageType) String() string {
	return proto.EnumName(WebsocketMessage_MessageType_name, int32(x))
}

type MessageBodyAnnotation_SliceType int32

const (
	MessageBodyAnnotation_UNKNOWN   MessageBodyAnnotation_SliceType = 0
	MessageBodyAnnotation_PLAINTEXT MessageBodyAnnotation_SliceType = 1
	// @fix ...
	MessageBodyAnnotation_USER_MENTION MessageBodyAnnotation_SliceType = 2
	MessageBodyAnnotation_WEB_LINK     MessageBodyAnnotation_SliceType = 3
	MessageBodyAnnotation_CHANNEL_LINK MessageBodyAnnotation_SliceType = 4
	MessageBodyAnnotation_EMAIL        MessageBodyAnnotation_SliceType = 5
	MessageBodyAnnotation_TEAMSPEAK    MessageBodyAnnotation_SliceType = 6
)

var MessageBodyAnnotation_SliceType_name = map[int32]string{
	0: "UNKNOWN",
	1: "PLAINTEXT",
	2: "USER_MENTION",
	3: "WEB_LINK",
	4: "CHANNEL_LINK",
	5: "EMAIL",
	6: "TEAMSPEAK",
}
var MessageBodyAnnotation_SliceType_value = map[string]int32{
	"UNKNOWN":      0,
	"PLAINTEXT":    1,
	"USER_MENTION": 2,
	"WEB_LINK":     3,
	"CHANNEL_LINK": 4,
	"EMAIL":        5,
	"TEAMSPEAK":    6,
}

func (x MessageBodyAnnotation_SliceType) String() string {
	return proto.EnumName(MessageBodyAnnotation_SliceType_name, int32(x))
}

type Website_WebsiteType int32

const (
	Website_DEFAULT        Website_WebsiteType = 0
	Website_TWITCH_CHANNEL Website_WebsiteType = 1
	Website_YOUTUBE_VIDEO  Website_WebsiteType = 2
)

var Website_WebsiteType_name = map[int32]string{
	0: "DEFAULT",
	1: "TWITCH_CHANNEL",
	2: "YOUTUBE_VIDEO",
}
var Website_WebsiteType_value = map[string]int32{
	"DEFAULT":        0,
	"TWITCH_CHANNEL": 1,
	"YOUTUBE_VIDEO":  2,
}

func (x Website_WebsiteType) String() string {
	return proto.EnumName(Website_WebsiteType_name, int32(x))
}

type SystemMessage_MessageType int32

const (
	SystemMessage_UNKNOWN               SystemMessage_MessageType = 0
	SystemMessage_TYPING                SystemMessage_MessageType = 1
	SystemMessage_STATUS                SystemMessage_MessageType = 2
	SystemMessage_SYSTEM_MESSAGE        SystemMessage_MessageType = 3
	SystemMessage_USER_JOINED           SystemMessage_MessageType = 4
	SystemMessage_USER_LEFT             SystemMessage_MessageType = 5
	SystemMessage_FRIEND_UPDATED        SystemMessage_MessageType = 6
	SystemMessage_READ_STATUS_UPDATE    SystemMessage_MessageType = 7
	SystemMessage_REQUEST_TO_PULL       SystemMessage_MessageType = 8
	SystemMessage_USER_VOICE_STATUS     SystemMessage_MessageType = 9
	SystemMessage_MESSAGE_DELETED       SystemMessage_MessageType = 10
	SystemMessage_MESSAGE_BATCH_DELETED SystemMessage_MessageType = 11
)

var SystemMessage_MessageType_name = map[int32]string{
	0:  "UNKNOWN",
	1:  "TYPING",
	2:  "STATUS",
	3:  "SYSTEM_MESSAGE",
	4:  "USER_JOINED",
	5:  "USER_LEFT",
	6:  "FRIEND_UPDATED",
	7:  "READ_STATUS_UPDATE",
	8:  "REQUEST_TO_PULL",
	9:  "USER_VOICE_STATUS",
	10: "MESSAGE_DELETED",
	11: "MESSAGE_BATCH_DELETED",
}
var SystemMessage_MessageType_value = map[string]int32{
	"UNKNOWN":               0,
	"TYPING":                1,
	"STATUS":                2,
	"SYSTEM_MESSAGE":        3,
	"USER_JOINED":           4,
	"USER_LEFT":             5,
	"FRIEND_UPDATED":        6,
	"READ_STATUS_UPDATE":    7,
	"REQUEST_TO_PULL":       8,
	"USER_VOICE_STATUS":     9,
	"MESSAGE_DELETED":       10,
	"MESSAGE_BATCH_DELETED": 11,
}

func (x SystemMessage_MessageType) String() string {
	return proto.EnumName(SystemMessage_MessageType_name, int32(x))
}

type SystemAction_Type int32

const (
	SystemAction_UNKNOWN        SystemAction_Type = 0
	SystemAction_GENERAL        SystemAction_Type = 1
	SystemAction_USER_LOGGED_IN SystemAction_Type = 2
)

var SystemAction_Type_name = map[int32]string{
	0: "UNKNOWN",
	1: "GENERAL",
	2: "USER_LOGGED_IN",
}
var SystemAction_Type_value = map[string]int32{
	"UNKNOWN":        0,
	"GENERAL":        1,
	"USER_LOGGED_IN": 2,
}

func (x SystemAction_Type) String() string {
	return proto.EnumName(SystemAction_Type_name, int32(x))
}

type WebsocketMessage struct {
	Id                 string                       `protobuf:"bytes,1,opt,name=id" json:"id,omitempty"`
	Type               WebsocketMessage_MessageType `protobuf:"varint,2,opt,name=type,enum=proto.WebsocketMessage_MessageType" json:"type,omitempty"`
	Timestamp          string                       `protobuf:"bytes,3,opt,name=timestamp" json:"timestamp,omitempty"`
	Channel            string                       `protobuf:"bytes,4,opt,name=channel" json:"channel,omitempty"`
	Sender             string                       `protobuf:"bytes,5,opt,name=sender" json:"sender,omitempty"`
	UserMessage        *UserMessage                 `protobuf:"bytes,6,opt,name=user_message" json:"user_message,omitempty"`
	UserAction         *UserMessage                 `protobuf:"bytes,7,opt,name=user_action" json:"user_action,omitempty"`
	SystemMessage      *SystemMessage               `protobuf:"bytes,8,opt,name=system_message" json:"system_message,omitempty"`
	SystemAction       *SystemAction                `protobuf:"bytes,10,opt,name=system_action" json:"system_action,omitempty"`
	Recipient          string                       `protobuf:"bytes,9,opt,name=recipient" json:"recipient,omitempty"`
	ProcessedByCrawler bool                         `protobuf:"varint,16,opt,name=processed_by_crawler" json:"processed_by_crawler,omitempty"`
	Deleted            bool                         `protobuf:"varint,17,opt,name=deleted" json:"deleted,omitempty"`
}

func (m *WebsocketMessage) Reset()         { *m = WebsocketMessage{} }
func (m *WebsocketMessage) String() string { return proto.CompactTextString(m) }
func (*WebsocketMessage) ProtoMessage()    {}

func (m *WebsocketMessage) GetUserMessage() *UserMessage {
	if m != nil {
		return m.UserMessage
	}
	return nil
}

func (m *WebsocketMessage) GetUserAction() *UserMessage {
	if m != nil {
		return m.UserAction
	}
	return nil
}

func (m *WebsocketMessage) GetSystemMessage() *SystemMessage {
	if m != nil {
		return m.SystemMessage
	}
	return nil
}

func (m *WebsocketMessage) GetSystemAction() *SystemAction {
	if m != nil {
		return m.SystemAction
	}
	return nil
}

type MessageBodyAnnotation struct {
	Type        MessageBodyAnnotation_SliceType `protobuf:"varint,1,opt,name=type,enum=proto.MessageBodyAnnotation_SliceType" json:"type,omitempty"`
	PosStart    int32                           `protobuf:"varint,2,opt,name=pos_start" json:"pos_start,omitempty"`
	PosEnd      int32                           `protobuf:"varint,3,opt,name=pos_end" json:"pos_end,omitempty"`
	Replacement string                          `protobuf:"bytes,4,opt,name=replacement" json:"replacement,omitempty"`
	Target      string                          `protobuf:"bytes,5,opt,name=target" json:"target,omitempty"`
	Proprietary []byte                          `protobuf:"bytes,6,opt,name=proprietary,proto3" json:"proprietary,omitempty"`
}

func (m *MessageBodyAnnotation) Reset()         { *m = MessageBodyAnnotation{} }
func (m *MessageBodyAnnotation) String() string { return proto.CompactTextString(m) }
func (*MessageBodyAnnotation) ProtoMessage()    {}

type MessageBodyAnnotationChannelLinkExtension struct {
	Invitation *MessageBodyAnnotationChannelLinkExtensionInvitation `protobuf:"bytes,1,opt,name=invitation" json:"invitation,omitempty"`
}

func (m *MessageBodyAnnotationChannelLinkExtension) Reset() {
	*m = MessageBodyAnnotationChannelLinkExtension{}
}
func (m *MessageBodyAnnotationChannelLinkExtension) String() string { return proto.CompactTextString(m) }
func (*MessageBodyAnnotationChannelLinkExtension) ProtoMessage()    {}

func (m *MessageBodyAnnotationChannelLinkExtension) GetInvitation() *MessageBodyAnnotationChannelLinkExtensionInvitation {
	if m != nil {
		return m.Invitation
	}
	return nil
}

type MessageBodyAnnotationChannelLinkExtensionInvitation struct {
	Consumed bool `protobuf:"varint,1,opt,name=consumed" json:"consumed,omitempty"`
}

func (m *MessageBodyAnnotationChannelLinkExtensionInvitation) Reset() {
	*m = MessageBodyAnnotationChannelLinkExtensionInvitation{}
}
func (m *MessageBodyAnnotationChannelLinkExtensionInvitation) String() string {
	return proto.CompactTextString(m)
}
func (*MessageBodyAnnotationChannelLinkExtensionInvitation) ProtoMessage() {}

type UserMessage struct {
	Body             string                   `protobuf:"bytes,1,opt,name=body" json:"body,omitempty"`
	BodyAnnotations  []*MessageBodyAnnotation `protobuf:"bytes,2,rep,name=body_annotations" json:"body_annotations,omitempty"`
	User             *ChatUser                `protobuf:"bytes,3,opt,name=user" json:"user,omitempty"`
	DeletedTimestamp string                   `protobuf:"bytes,4,opt,name=deleted_timestamp" json:"deleted_timestamp,omitempty"`
	DeletedUser      string                   `protobuf:"bytes,5,opt,name=deleted_user" json:"deleted_user,omitempty"`
	Quote            string                   `protobuf:"bytes,16,opt,name=quote" json:"quote,omitempty"`
	Website          *Website                 `protobuf:"bytes,17,opt,name=website" json:"website,omitempty"`
}

func (m *UserMessage) Reset()         { *m = UserMessage{} }
func (m *UserMessage) String() string { return proto.CompactTextString(m) }
func (*UserMessage) ProtoMessage()    {}

func (m *UserMessage) GetBodyAnnotations() []*MessageBodyAnnotation {
	if m != nil {
		return m.BodyAnnotations
	}
	return nil
}

func (m *UserMessage) GetUser() *ChatUser {
	if m != nil {
		return m.User
	}
	return nil
}

func (m *UserMessage) GetWebsite() *Website {
	if m != nil {
		return m.Website
	}
	return nil
}

type Website struct {
	Url         string              `protobuf:"bytes,1,opt,name=url" json:"url,omitempty"`
	Title       string              `protobuf:"bytes,2,opt,name=title" json:"title,omitempty"`
	Description string              `protobuf:"bytes,3,opt,name=description" json:"description,omitempty"`
	Image       string              `protobuf:"bytes,4,opt,name=image" json:"image,omitempty"`
	Video       string              `protobuf:"bytes,5,opt,name=video" json:"video,omitempty"`
	ImageWidth  int32               `protobuf:"varint,6,opt,name=image_width" json:"image_width,omitempty"`
	ImageHeight int32               `protobuf:"varint,7,opt,name=image_height" json:"image_height,omitempty"`
	Type        Website_WebsiteType `protobuf:"varint,8,opt,name=type,enum=proto.Website_WebsiteType" json:"type,omitempty"`
	ContentId   string              `protobuf:"bytes,9,opt,name=content_id" json:"content_id,omitempty"`
}

func (m *Website) Reset()         { *m = Website{} }
func (m *Website) String() string { return proto.CompactTextString(m) }
func (*Website) ProtoMessage()    {}

type UserAction struct {
	Id      string `protobuf:"bytes,1,opt,name=id" json:"id,omitempty"`
	Message string `protobuf:"bytes,2,opt,name=message" json:"message,omitempty"`
	UserId  string `protobuf:"bytes,3,opt,name=user_id" json:"user_id,omitempty"`
	Channel string `protobuf:"bytes,4,opt,name=channel" json:"channel,omitempty"`
}

func (m *UserAction) Reset()         { *m = UserAction{} }
func (m *UserAction) String() string { return proto.CompactTextString(m) }
func (*UserAction) ProtoMessage()    {}

type SystemMessage struct {
	Type            SystemMessage_MessageType              `protobuf:"varint,1,opt,name=type,enum=proto.SystemMessage_MessageType" json:"type,omitempty"`
	Channel         string                                 `protobuf:"bytes,2,opt,name=channel" json:"channel,omitempty"`
	Typing          *TypingStatus                          `protobuf:"bytes,3,opt,name=typing" json:"typing,omitempty"`
	User            *ChatUser                              `protobuf:"bytes,4,opt,name=user" json:"user,omitempty"`
	Message         string                                 `protobuf:"bytes,5,opt,name=message" json:"message,omitempty"`
	UserVoiceStatus *UserVoiceStatusUpdate                 `protobuf:"bytes,8,opt,name=user_voice_status" json:"user_voice_status,omitempty"`
	MessageBatch    *MessageBatch                          `protobuf:"bytes,9,opt,name=message_batch" json:"message_batch,omitempty"`
	UserTypeV1      ChannelUser_ChannelUserType            `protobuf:"varint,6,opt,name=user_type_v1,enum=proto.ChannelUser_ChannelUserType" json:"user_type_v1,omitempty"`
	UserType        ChannelMembershipRecord_MembershipType `protobuf:"varint,7,opt,name=user_type,enum=proto.ChannelMembershipRecord_MembershipType" json:"user_type,omitempty"`
	Payload         *Any                                   `protobuf:"bytes,16,opt,name=payload" json:"payload,omitempty"`
}

func (m *SystemMessage) Reset()         { *m = SystemMessage{} }
func (m *SystemMessage) String() string { return proto.CompactTextString(m) }
func (*SystemMessage) ProtoMessage()    {}

func (m *SystemMessage) GetTyping() *TypingStatus {
	if m != nil {
		return m.Typing
	}
	return nil
}

func (m *SystemMessage) GetUser() *ChatUser {
	if m != nil {
		return m.User
	}
	return nil
}

func (m *SystemMessage) GetUserVoiceStatus() *UserVoiceStatusUpdate {
	if m != nil {
		return m.UserVoiceStatus
	}
	return nil
}

func (m *SystemMessage) GetMessageBatch() *MessageBatch {
	if m != nil {
		return m.MessageBatch
	}
	return nil
}

func (m *SystemMessage) GetPayload() *Any {
	if m != nil {
		return m.Payload
	}
	return nil
}

type SystemAction struct {
	Type            SystemAction_Type        `protobuf:"varint,1,opt,name=type,enum=proto.SystemAction_Type" json:"type,omitempty"`
	Body            string                   `protobuf:"bytes,2,opt,name=body" json:"body,omitempty"`
	BodyAnnotations []*MessageBodyAnnotation `protobuf:"bytes,3,rep,name=body_annotations" json:"body_annotations,omitempty"`
	Payload         *Any                     `protobuf:"bytes,4,opt,name=payload" json:"payload,omitempty"`
}

func (m *SystemAction) Reset()         { *m = SystemAction{} }
func (m *SystemAction) String() string { return proto.CompactTextString(m) }
func (*SystemAction) ProtoMessage()    {}

func (m *SystemAction) GetBodyAnnotations() []*MessageBodyAnnotation {
	if m != nil {
		return m.BodyAnnotations
	}
	return nil
}

func (m *SystemAction) GetPayload() *Any {
	if m != nil {
		return m.Payload
	}
	return nil
}

type SystemActionPayloadUserLoggedIn struct {
	FormerUser  *ChatUser `protobuf:"bytes,1,opt,name=former_user" json:"former_user,omitempty"`
	CurrentUser *ChatUser `protobuf:"bytes,2,opt,name=current_user" json:"current_user,omitempty"`
}

func (m *SystemActionPayloadUserLoggedIn) Reset()         { *m = SystemActionPayloadUserLoggedIn{} }
func (m *SystemActionPayloadUserLoggedIn) String() string { return proto.CompactTextString(m) }
func (*SystemActionPayloadUserLoggedIn) ProtoMessage()    {}

func (m *SystemActionPayloadUserLoggedIn) GetFormerUser() *ChatUser {
	if m != nil {
		return m.FormerUser
	}
	return nil
}

func (m *SystemActionPayloadUserLoggedIn) GetCurrentUser() *ChatUser {
	if m != nil {
		return m.CurrentUser
	}
	return nil
}

type MessageBatch struct {
	Start string `protobuf:"bytes,1,opt,name=start" json:"start,omitempty"`
	End   string `protobuf:"bytes,2,opt,name=end" json:"end,omitempty"`
}

func (m *MessageBatch) Reset()         { *m = MessageBatch{} }
func (m *MessageBatch) String() string { return proto.CompactTextString(m) }
func (*MessageBatch) ProtoMessage()    {}

type UserVoiceStatusUpdate struct {
	UserId          string                              `protobuf:"bytes,1,opt,name=user_id" json:"user_id,omitempty"`
	UserVoiceStatus ChannelMembershipRecord_VoiceStatus `protobuf:"varint,2,opt,name=user_voice_status,enum=proto.ChannelMembershipRecord_VoiceStatus" json:"user_voice_status,omitempty"`
}

func (m *UserVoiceStatusUpdate) Reset()         { *m = UserVoiceStatusUpdate{} }
func (m *UserVoiceStatusUpdate) String() string { return proto.CompactTextString(m) }
func (*UserVoiceStatusUpdate) ProtoMessage()    {}

type TypingStatus struct {
	UserId   string `protobuf:"bytes,1,opt,name=user_id" json:"user_id,omitempty"`
	IsTyping bool   `protobuf:"varint,2,opt,name=is_typing" json:"is_typing,omitempty"`
}

func (m *TypingStatus) Reset()         { *m = TypingStatus{} }
func (m *TypingStatus) String() string { return proto.CompactTextString(m) }
func (*TypingStatus) ProtoMessage()    {}

type MessageWithMeta struct {
	Message     *WebsocketMessage `protobuf:"bytes,1,opt,name=message" json:"message,omitempty"`
	SenderAgent *UserAgent        `protobuf:"bytes,2,opt,name=sender_agent" json:"sender_agent,omitempty"`
}

func (m *MessageWithMeta) Reset()         { *m = MessageWithMeta{} }
func (m *MessageWithMeta) String() string { return proto.CompactTextString(m) }
func (*MessageWithMeta) ProtoMessage()    {}

func (m *MessageWithMeta) GetMessage() *WebsocketMessage {
	if m != nil {
		return m.Message
	}
	return nil
}

func (m *MessageWithMeta) GetSenderAgent() *UserAgent {
	if m != nil {
		return m.SenderAgent
	}
	return nil
}

func init() {
	proto.RegisterEnum("proto.WebsocketMessage_MessageType", WebsocketMessage_MessageType_name, WebsocketMessage_MessageType_value)
	proto.RegisterEnum("proto.MessageBodyAnnotation_SliceType", MessageBodyAnnotation_SliceType_name, MessageBodyAnnotation_SliceType_value)
	proto.RegisterEnum("proto.Website_WebsiteType", Website_WebsiteType_name, Website_WebsiteType_value)
	proto.RegisterEnum("proto.SystemMessage_MessageType", SystemMessage_MessageType_name, SystemMessage_MessageType_value)
	proto.RegisterEnum("proto.SystemAction_Type", SystemAction_Type_name, SystemAction_Type_value)
}