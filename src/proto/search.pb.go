// Code generated by protoc-gen-go.
// source: search.proto
// DO NOT EDIT!

package gosuproto

import proto "github.com/golang/protobuf/proto"

import (
	context "golang.org/x/net/context"
	grpc "google.golang.org/grpc"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal

type SearchHit_Type int32

const (
	SearchHit_UNKNOWN   SearchHit_Type = 0
	SearchHit_GROUP     SearchHit_Type = 1
	SearchHit_USER      SearchHit_Type = 2
	SearchHit_GAME      SearchHit_Type = 3
	SearchHit_COMMUNITY SearchHit_Type = 4
)

var SearchHit_Type_name = map[int32]string{
	0: "UNKNOWN",
	1: "GROUP",
	2: "USER",
	3: "GAME",
	4: "COMMUNITY",
}
var SearchHit_Type_value = map[string]int32{
	"UNKNOWN":   0,
	"GROUP":     1,
	"USER":      2,
	"GAME":      3,
	"COMMUNITY": 4,
}

func (x SearchHit_Type) String() string {
	return proto.EnumName(SearchHit_Type_name, int32(x))
}

type Suggestion_Type int32

const (
	Suggestion_UNKNOWN   Suggestion_Type = 0
	Suggestion_GROUP     Suggestion_Type = 1
	Suggestion_USER      Suggestion_Type = 2
	Suggestion_GAME      Suggestion_Type = 3
	Suggestion_COMMUNITY Suggestion_Type = 4
)

var Suggestion_Type_name = map[int32]string{
	0: "UNKNOWN",
	1: "GROUP",
	2: "USER",
	3: "GAME",
	4: "COMMUNITY",
}
var Suggestion_Type_value = map[string]int32{
	"UNKNOWN":   0,
	"GROUP":     1,
	"USER":      2,
	"GAME":      3,
	"COMMUNITY": 4,
}

func (x Suggestion_Type) String() string {
	return proto.EnumName(Suggestion_Type_name, int32(x))
}

type SearchRequest struct {
	Types  []string `protobuf:"bytes,1,rep,name=types" json:"types,omitempty"`
	Fields []string `protobuf:"bytes,2,rep,name=fields" json:"fields,omitempty"`
	Text   string   `protobuf:"bytes,3,opt,name=text" json:"text,omitempty"`
	Fuzzy  bool     `protobuf:"varint,4,opt,name=fuzzy" json:"fuzzy,omitempty"`
	Size   int32    `protobuf:"varint,5,opt,name=size" json:"size,omitempty"`
	From   int32    `protobuf:"varint,6,opt,name=from" json:"from,omitempty"`
}

func (m *SearchRequest) Reset()         { *m = SearchRequest{} }
func (m *SearchRequest) String() string { return proto.CompactTextString(m) }
func (*SearchRequest) ProtoMessage()    {}

type SearchResponse struct {
	Hits map[string]*SearchHits `protobuf:"bytes,1,rep,name=hits" json:"hits,omitempty" protobuf_key:"bytes,1,opt,name=key" protobuf_val:"bytes,2,opt,name=value"`
	From int32                  `protobuf:"varint,2,opt,name=from" json:"from,omitempty"`
}

func (m *SearchResponse) Reset()         { *m = SearchResponse{} }
func (m *SearchResponse) String() string { return proto.CompactTextString(m) }
func (*SearchResponse) ProtoMessage()    {}

func (m *SearchResponse) GetHits() map[string]*SearchHits {
	if m != nil {
		return m.Hits
	}
	return nil
}

type SearchHits struct {
	Hits  []*SearchHit `protobuf:"bytes,1,rep,name=hits" json:"hits,omitempty"`
	Type  string       `protobuf:"bytes,2,opt,name=type" json:"type,omitempty"`
	Total int64        `protobuf:"varint,3,opt,name=total" json:"total,omitempty"`
}

func (m *SearchHits) Reset()         { *m = SearchHits{} }
func (m *SearchHits) String() string { return proto.CompactTextString(m) }
func (*SearchHits) ProtoMessage()    {}

func (m *SearchHits) GetHits() []*SearchHit {
	if m != nil {
		return m.Hits
	}
	return nil
}

type SearchHit struct {
	Score      float32                `protobuf:"fixed32,1,opt,name=score" json:"score,omitempty"`
	Index      string                 `protobuf:"bytes,2,opt,name=index" json:"index,omitempty"`
	Type       SearchHit_Type         `protobuf:"varint,3,opt,name=type,enum=proto.SearchHit_Type" json:"type,omitempty"`
	Id         string                 `protobuf:"bytes,4,opt,name=id" json:"id,omitempty"`
	Highlights map[string]*Highlights `protobuf:"bytes,5,rep,name=highlights" json:"highlights,omitempty" protobuf_key:"bytes,1,opt,name=key" protobuf_val:"bytes,2,opt,name=value"`
	User       *SearchUser            `protobuf:"bytes,10,opt,name=user" json:"user,omitempty"`
	Group      *SearchGroup           `protobuf:"bytes,11,opt,name=group" json:"group,omitempty"`
	Game       *SearchGame            `protobuf:"bytes,12,opt,name=game" json:"game,omitempty"`
	Community  *Hub                   `protobuf:"bytes,13,opt,name=community" json:"community,omitempty"`
}

func (m *SearchHit) Reset()         { *m = SearchHit{} }
func (m *SearchHit) String() string { return proto.CompactTextString(m) }
func (*SearchHit) ProtoMessage()    {}

func (m *SearchHit) GetHighlights() map[string]*Highlights {
	if m != nil {
		return m.Highlights
	}
	return nil
}

func (m *SearchHit) GetUser() *SearchUser {
	if m != nil {
		return m.User
	}
	return nil
}

func (m *SearchHit) GetGroup() *SearchGroup {
	if m != nil {
		return m.Group
	}
	return nil
}

func (m *SearchHit) GetGame() *SearchGame {
	if m != nil {
		return m.Game
	}
	return nil
}

func (m *SearchHit) GetCommunity() *Hub {
	if m != nil {
		return m.Community
	}
	return nil
}

type Highlights struct {
	Field      string   `protobuf:"bytes,1,opt,name=field" json:"field,omitempty"`
	Highlights []string `protobuf:"bytes,2,rep,name=highlights" json:"highlights,omitempty"`
}

func (m *Highlights) Reset()         { *m = Highlights{} }
func (m *Highlights) String() string { return proto.CompactTextString(m) }
func (*Highlights) ProtoMessage()    {}

type IndexResponse struct {
	Index   string `protobuf:"bytes,1,opt,name=index" json:"index,omitempty"`
	Type    string `protobuf:"bytes,2,opt,name=type" json:"type,omitempty"`
	Id      string `protobuf:"bytes,3,opt,name=id" json:"id,omitempty"`
	Version int64  `protobuf:"varint,4,opt,name=version" json:"version,omitempty"`
	Created bool   `protobuf:"varint,5,opt,name=created" json:"created,omitempty"`
}

func (m *IndexResponse) Reset()         { *m = IndexResponse{} }
func (m *IndexResponse) String() string { return proto.CompactTextString(m) }
func (*IndexResponse) ProtoMessage()    {}

type DeleteResponse struct {
	Found   bool   `protobuf:"varint,1,opt,name=found" json:"found,omitempty"`
	Index   string `protobuf:"bytes,2,opt,name=index" json:"index,omitempty"`
	Type    string `protobuf:"bytes,3,opt,name=type" json:"type,omitempty"`
	Id      string `protobuf:"bytes,4,opt,name=id" json:"id,omitempty"`
	Version int64  `protobuf:"varint,5,opt,name=version" json:"version,omitempty"`
}

func (m *DeleteResponse) Reset()         { *m = DeleteResponse{} }
func (m *DeleteResponse) String() string { return proto.CompactTextString(m) }
func (*DeleteResponse) ProtoMessage()    {}

type Suggestion struct {
	Id                    string          `protobuf:"bytes,1,opt,name=id" json:"id,omitempty"`
	Type                  Suggestion_Type `protobuf:"varint,2,opt,name=type,enum=proto.Suggestion_Type" json:"type,omitempty"`
	Title                 string          `protobuf:"bytes,3,opt,name=title" json:"title,omitempty"`
	Image                 string          `protobuf:"bytes,4,opt,name=image" json:"image,omitempty"`
	DEPRECATEDProprietary []byte          `protobuf:"bytes,5,opt,name=DEPRECATED_proprietary,proto3" json:"DEPRECATED_proprietary,omitempty"`
	Data                  *Any            `protobuf:"bytes,6,opt,name=data" json:"data,omitempty"`
}

func (m *Suggestion) Reset()         { *m = Suggestion{} }
func (m *Suggestion) String() string { return proto.CompactTextString(m) }
func (*Suggestion) ProtoMessage()    {}

func (m *Suggestion) GetData() *Any {
	if m != nil {
		return m.Data
	}
	return nil
}

type SuggestionRequest struct {
	Text    string   `protobuf:"bytes,1,opt,name=text" json:"text,omitempty"`
	Fuzzy   bool     `protobuf:"varint,2,opt,name=fuzzy" json:"fuzzy,omitempty"`
	Context []string `protobuf:"bytes,3,rep,name=context" json:"context,omitempty"`
}

func (m *SuggestionRequest) Reset()         { *m = SuggestionRequest{} }
func (m *SuggestionRequest) String() string { return proto.CompactTextString(m) }
func (*SuggestionRequest) ProtoMessage()    {}

type SuggestionResponse struct {
	Suggestions []*Suggestion `protobuf:"bytes,1,rep,name=suggestions" json:"suggestions,omitempty"`
}

func (m *SuggestionResponse) Reset()         { *m = SuggestionResponse{} }
func (m *SuggestionResponse) String() string { return proto.CompactTextString(m) }
func (*SuggestionResponse) ProtoMessage()    {}

func (m *SuggestionResponse) GetSuggestions() []*Suggestion {
	if m != nil {
		return m.Suggestions
	}
	return nil
}

type SearchGroup struct {
	Id              string           `protobuf:"bytes,1,opt,name=id" json:"id,omitempty"`
	Name            string           `protobuf:"bytes,2,opt,name=name" json:"name,omitempty"`
	Description     string           `protobuf:"bytes,3,opt,name=description" json:"description,omitempty"`
	TitleImage      string           `protobuf:"bytes,4,opt,name=title_image" json:"title_image,omitempty"`
	BackgroundImage string           `protobuf:"bytes,5,opt,name=background_image" json:"background_image,omitempty"`
	Channels        []*SearchChannel `protobuf:"bytes,6,rep,name=channels" json:"channels,omitempty"`
}

func (m *SearchGroup) Reset()         { *m = SearchGroup{} }
func (m *SearchGroup) String() string { return proto.CompactTextString(m) }
func (*SearchGroup) ProtoMessage()    {}

func (m *SearchGroup) GetChannels() []*SearchChannel {
	if m != nil {
		return m.Channels
	}
	return nil
}

type SearchGame struct {
	Id               string           `protobuf:"bytes,1,opt,name=id" json:"id,omitempty"`
	Name             string           `protobuf:"bytes,2,opt,name=name" json:"name,omitempty"`
	ShortName        string           `protobuf:"bytes,3,opt,name=short_name" json:"short_name,omitempty"`
	TitleImage       string           `protobuf:"bytes,4,opt,name=title_image" json:"title_image,omitempty"`
	BackgroundImages []string         `protobuf:"bytes,5,rep,name=background_images" json:"background_images,omitempty"`
	Channels         []*SearchChannel `protobuf:"bytes,6,rep,name=channels" json:"channels,omitempty"`
}

func (m *SearchGame) Reset()         { *m = SearchGame{} }
func (m *SearchGame) String() string { return proto.CompactTextString(m) }
func (*SearchGame) ProtoMessage()    {}

func (m *SearchGame) GetChannels() []*SearchChannel {
	if m != nil {
		return m.Channels
	}
	return nil
}

type SearchChannel struct {
	Id    string   `protobuf:"bytes,1,opt,name=id" json:"id,omitempty"`
	Title string   `protobuf:"bytes,2,opt,name=title" json:"title,omitempty"`
	Topic string   `protobuf:"bytes,3,opt,name=topic" json:"topic,omitempty"`
	Tags  []string `protobuf:"bytes,4,rep,name=tags" json:"tags,omitempty"`
}

func (m *SearchChannel) Reset()         { *m = SearchChannel{} }
func (m *SearchChannel) String() string { return proto.CompactTextString(m) }
func (*SearchChannel) ProtoMessage()    {}

type SearchUser struct {
	Id              string `protobuf:"bytes,1,opt,name=id" json:"id,omitempty"`
	Name            string `protobuf:"bytes,2,opt,name=name" json:"name,omitempty"`
	AvatarImage     string `protobuf:"bytes,3,opt,name=avatar_image" json:"avatar_image,omitempty"`
	BackgroundImage string `protobuf:"bytes,4,opt,name=background_image" json:"background_image,omitempty"`
}

func (m *SearchUser) Reset()         { *m = SearchUser{} }
func (m *SearchUser) String() string { return proto.CompactTextString(m) }
func (*SearchUser) ProtoMessage()    {}

func init() {
	proto.RegisterEnum("proto.SearchHit_Type", SearchHit_Type_name, SearchHit_Type_value)
	proto.RegisterEnum("proto.Suggestion_Type", Suggestion_Type_name, Suggestion_Type_value)
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// Client API for SearchService service

type SearchServiceClient interface {
	Search(ctx context.Context, in *SearchRequest, opts ...grpc.CallOption) (*SearchResponse, error)
	IndexGroup(ctx context.Context, in *Group, opts ...grpc.CallOption) (*IndexResponse, error)
	DeleteGroup(ctx context.Context, in *Group, opts ...grpc.CallOption) (*DeleteResponse, error)
	IndexUser(ctx context.Context, in *User, opts ...grpc.CallOption) (*IndexResponse, error)
	DeleteUser(ctx context.Context, in *User, opts ...grpc.CallOption) (*DeleteResponse, error)
	GetSuggestions(ctx context.Context, in *SuggestionRequest, opts ...grpc.CallOption) (*SuggestionResponse, error)
}

type searchServiceClient struct {
	cc *grpc.ClientConn
}

func NewSearchServiceClient(cc *grpc.ClientConn) SearchServiceClient {
	return &searchServiceClient{cc}
}

func (c *searchServiceClient) Search(ctx context.Context, in *SearchRequest, opts ...grpc.CallOption) (*SearchResponse, error) {
	out := new(SearchResponse)
	err := grpc.Invoke(ctx, "/proto.SearchService/Search", in, out, c.cc, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *searchServiceClient) IndexGroup(ctx context.Context, in *Group, opts ...grpc.CallOption) (*IndexResponse, error) {
	out := new(IndexResponse)
	err := grpc.Invoke(ctx, "/proto.SearchService/IndexGroup", in, out, c.cc, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *searchServiceClient) DeleteGroup(ctx context.Context, in *Group, opts ...grpc.CallOption) (*DeleteResponse, error) {
	out := new(DeleteResponse)
	err := grpc.Invoke(ctx, "/proto.SearchService/DeleteGroup", in, out, c.cc, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *searchServiceClient) IndexUser(ctx context.Context, in *User, opts ...grpc.CallOption) (*IndexResponse, error) {
	out := new(IndexResponse)
	err := grpc.Invoke(ctx, "/proto.SearchService/IndexUser", in, out, c.cc, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *searchServiceClient) DeleteUser(ctx context.Context, in *User, opts ...grpc.CallOption) (*DeleteResponse, error) {
	out := new(DeleteResponse)
	err := grpc.Invoke(ctx, "/proto.SearchService/DeleteUser", in, out, c.cc, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *searchServiceClient) GetSuggestions(ctx context.Context, in *SuggestionRequest, opts ...grpc.CallOption) (*SuggestionResponse, error) {
	out := new(SuggestionResponse)
	err := grpc.Invoke(ctx, "/proto.SearchService/GetSuggestions", in, out, c.cc, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// Server API for SearchService service

type SearchServiceServer interface {
	Search(context.Context, *SearchRequest) (*SearchResponse, error)
	IndexGroup(context.Context, *Group) (*IndexResponse, error)
	DeleteGroup(context.Context, *Group) (*DeleteResponse, error)
	IndexUser(context.Context, *User) (*IndexResponse, error)
	DeleteUser(context.Context, *User) (*DeleteResponse, error)
	GetSuggestions(context.Context, *SuggestionRequest) (*SuggestionResponse, error)
}

func RegisterSearchServiceServer(s *grpc.Server, srv SearchServiceServer) {
	s.RegisterService(&_SearchService_serviceDesc, srv)
}

func _SearchService_Search_Handler(srv interface{}, ctx context.Context, codec grpc.Codec, buf []byte) (interface{}, error) {
	in := new(SearchRequest)
	if err := codec.Unmarshal(buf, in); err != nil {
		return nil, err
	}
	out, err := srv.(SearchServiceServer).Search(ctx, in)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func _SearchService_IndexGroup_Handler(srv interface{}, ctx context.Context, codec grpc.Codec, buf []byte) (interface{}, error) {
	in := new(Group)
	if err := codec.Unmarshal(buf, in); err != nil {
		return nil, err
	}
	out, err := srv.(SearchServiceServer).IndexGroup(ctx, in)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func _SearchService_DeleteGroup_Handler(srv interface{}, ctx context.Context, codec grpc.Codec, buf []byte) (interface{}, error) {
	in := new(Group)
	if err := codec.Unmarshal(buf, in); err != nil {
		return nil, err
	}
	out, err := srv.(SearchServiceServer).DeleteGroup(ctx, in)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func _SearchService_IndexUser_Handler(srv interface{}, ctx context.Context, codec grpc.Codec, buf []byte) (interface{}, error) {
	in := new(User)
	if err := codec.Unmarshal(buf, in); err != nil {
		return nil, err
	}
	out, err := srv.(SearchServiceServer).IndexUser(ctx, in)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func _SearchService_DeleteUser_Handler(srv interface{}, ctx context.Context, codec grpc.Codec, buf []byte) (interface{}, error) {
	in := new(User)
	if err := codec.Unmarshal(buf, in); err != nil {
		return nil, err
	}
	out, err := srv.(SearchServiceServer).DeleteUser(ctx, in)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func _SearchService_GetSuggestions_Handler(srv interface{}, ctx context.Context, codec grpc.Codec, buf []byte) (interface{}, error) {
	in := new(SuggestionRequest)
	if err := codec.Unmarshal(buf, in); err != nil {
		return nil, err
	}
	out, err := srv.(SearchServiceServer).GetSuggestions(ctx, in)
	if err != nil {
		return nil, err
	}
	return out, nil
}

var _SearchService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "proto.SearchService",
	HandlerType: (*SearchServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Search",
			Handler:    _SearchService_Search_Handler,
		},
		{
			MethodName: "IndexGroup",
			Handler:    _SearchService_IndexGroup_Handler,
		},
		{
			MethodName: "DeleteGroup",
			Handler:    _SearchService_DeleteGroup_Handler,
		},
		{
			MethodName: "IndexUser",
			Handler:    _SearchService_IndexUser_Handler,
		},
		{
			MethodName: "DeleteUser",
			Handler:    _SearchService_DeleteUser_Handler,
		},
		{
			MethodName: "GetSuggestions",
			Handler:    _SearchService_GetSuggestions_Handler,
		},
	},
	Streams: []grpc.StreamDesc{},
}