// Code generated by protoc-gen-go.
// source: webhook.proto
// DO NOT EDIT!

package gosuproto

import proto "github.com/golang/protobuf/proto"

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal

type OutgoingWebhook struct {
	Id             string `protobuf:"bytes,1,opt,name=id" json:"id,omitempty"`
	TriggerCommand string `protobuf:"bytes,2,opt,name=trigger_command" json:"trigger_command,omitempty"`
	Url            string `protobuf:"bytes,3,opt,name=url" json:"url,omitempty"`
	Method         string `protobuf:"bytes,4,opt,name=method" json:"method,omitempty"`
	Token          string `protobuf:"bytes,5,opt,name=token" json:"token,omitempty"`
	ChannelId      string `protobuf:"bytes,6,opt,name=channel_id" json:"channel_id,omitempty"`
	TsCreated      string `protobuf:"bytes,7,opt,name=ts_created" json:"ts_created,omitempty"`
	AcShow         bool   `protobuf:"varint,8,opt,name=ac_show" json:"ac_show,omitempty"`
	AcDesc         string `protobuf:"bytes,9,opt,name=ac_desc" json:"ac_desc,omitempty"`
	AcHint         string `protobuf:"bytes,10,opt,name=ac_hint" json:"ac_hint,omitempty"`
	OwnerId        string `protobuf:"bytes,11,opt,name=owner_id" json:"owner_id,omitempty"`
	ResponseName   string `protobuf:"bytes,12,opt,name=response_name" json:"response_name,omitempty"`
	ResponseAvatar string `protobuf:"bytes,13,opt,name=response_avatar" json:"response_avatar,omitempty"`
}

func (m *OutgoingWebhook) Reset()         { *m = OutgoingWebhook{} }
func (m *OutgoingWebhook) String() string { return proto.CompactTextString(m) }
func (*OutgoingWebhook) ProtoMessage()    {}