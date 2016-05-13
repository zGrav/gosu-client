// Code generated by protoc-gen-go.
// source: sip.proto
// DO NOT EDIT!

package gosuproto

import proto "github.com/golang/protobuf/proto"

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal

type SipGetDeviceResponse struct {
	PrivateId string `protobuf:"bytes,1,opt,name=private_id" json:"private_id,omitempty"`
	PublicId  string `protobuf:"bytes,2,opt,name=public_id" json:"public_id,omitempty"`
	Realm     string `protobuf:"bytes,3,opt,name=realm" json:"realm,omitempty"`
	Password  string `protobuf:"bytes,4,opt,name=password" json:"password,omitempty"`
}

func (m *SipGetDeviceResponse) Reset()         { *m = SipGetDeviceResponse{} }
func (m *SipGetDeviceResponse) String() string { return proto.CompactTextString(m) }
func (*SipGetDeviceResponse) ProtoMessage()    {}

type SipGetConferenceResponse struct {
	Address string `protobuf:"bytes,1,opt,name=address" json:"address,omitempty"`
}

func (m *SipGetConferenceResponse) Reset()         { *m = SipGetConferenceResponse{} }
func (m *SipGetConferenceResponse) String() string { return proto.CompactTextString(m) }
func (*SipGetConferenceResponse) ProtoMessage()    {}

type SipSetConferenceStatusRequest struct {
	VoiceStatus ChannelMembershipRecord_VoiceStatus `protobuf:"varint,1,opt,name=voice_status,enum=proto.ChannelMembershipRecord_VoiceStatus" json:"voice_status,omitempty"`
}

func (m *SipSetConferenceStatusRequest) Reset()         { *m = SipSetConferenceStatusRequest{} }
func (m *SipSetConferenceStatusRequest) String() string { return proto.CompactTextString(m) }
func (*SipSetConferenceStatusRequest) ProtoMessage()    {}