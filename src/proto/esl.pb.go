// Code generated by protoc-gen-go.
// source: esl.proto
// DO NOT EDIT!

package gosuproto

import proto "github.com/golang/protobuf/proto"

import (
	context "golang.org/x/net/context"
	grpc "google.golang.org/grpc"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// Client API for ESLService service

type ESLServiceClient interface {
	// Check if an email belongs to an esl staff member
	//
	// Only emails ending in @staff.eslgaming.com will
	// result in a positive value
	IsStaffMember(ctx context.Context, in *StringValue, opts ...grpc.CallOption) (*BoolValue, error)
}

type eSLServiceClient struct {
	cc *grpc.ClientConn
}

func NewESLServiceClient(cc *grpc.ClientConn) ESLServiceClient {
	return &eSLServiceClient{cc}
}

func (c *eSLServiceClient) IsStaffMember(ctx context.Context, in *StringValue, opts ...grpc.CallOption) (*BoolValue, error) {
	out := new(BoolValue)
	err := grpc.Invoke(ctx, "/proto.ESLService/IsStaffMember", in, out, c.cc, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// Server API for ESLService service

type ESLServiceServer interface {
	// Check if an email belongs to an esl staff member
	//
	// Only emails ending in @staff.eslgaming.com will
	// result in a positive value
	IsStaffMember(context.Context, *StringValue) (*BoolValue, error)
}

func RegisterESLServiceServer(s *grpc.Server, srv ESLServiceServer) {
	s.RegisterService(&_ESLService_serviceDesc, srv)
}

func _ESLService_IsStaffMember_Handler(srv interface{}, ctx context.Context, codec grpc.Codec, buf []byte) (interface{}, error) {
	in := new(StringValue)
	if err := codec.Unmarshal(buf, in); err != nil {
		return nil, err
	}
	out, err := srv.(ESLServiceServer).IsStaffMember(ctx, in)
	if err != nil {
		return nil, err
	}
	return out, nil
}

var _ESLService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "proto.ESLService",
	HandlerType: (*ESLServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "IsStaffMember",
			Handler:    _ESLService_IsStaffMember_Handler,
		},
	},
	Streams: []grpc.StreamDesc{},
}
