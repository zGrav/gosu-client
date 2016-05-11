// This file contains extension to the any datatype

package gosuproto

import (
	"reflect"

	proto "github.com/golang/protobuf/proto"
	"github.com/juju/errors"
)

// Types is the TypeRegister for all gosu messages
var Types = TypeRegister{}

// Type URL for use in other packages
const (
	TypeURLUser                            = "type.go.su/proto.User"
	TypeURLGroup                           = "type.go.su/proto.Group"
	TypeURLChannel                         = "type.go.su/proto.Channel"
	TypeURLCommunity                       = "type.go.su/proto.Hub"
	TypeURLWebsocketMessage                = "type.go.su/proto.WebsocketMessage"
	TypeURLSystemActionPayloadUserLoggedIn = "type.go.su/proto.SystemActionPayloadUserLoggedIn"
)

func init() {
	Types.Set(TypeURLUser, &User{})
	Types.Set(TypeURLGroup, &Group{})
	Types.Set(TypeURLChannel, &Channel{})
	Types.Set(TypeURLCommunity, &Hub{})
	Types.Set(TypeURLWebsocketMessage, &WebsocketMessage{})
	Types.Set(TypeURLSystemActionPayloadUserLoggedIn, &SystemActionPayloadUserLoggedIn{})
}

// GetWebsocketMessage unwraps the message encoded in any as a websocket message
func (a *Any) GetWebsocketMessage() (*WebsocketMessage, error) {
	msg, err := a.GetValue()

	if err != nil {
		return nil, err
	}

	user, ok := msg.(*WebsocketMessage)

	if !ok {
		return nil, ErrWrongType
	}

	return user, nil
}

// GetUser unwraps the message encoded in any as a user
func (a *Any) GetUser() (*User, error) {
	msg, err := a.GetValue()

	if err != nil {
		return nil, err
	}

	user, ok := msg.(*User)

	if !ok {
		return nil, ErrWrongType
	}

	return user, nil
}

// GetGroup unwraps the message encoded in any as a goup
func (a *Any) GetGroup() (*Group, error) {
	msg, err := a.GetValue()

	if err != nil {
		return nil, err
	}

	group, ok := msg.(*Group)

	if !ok {
		return nil, ErrWrongType
	}

	return group, nil
}

// GetCommunity unwraps the message encoded in any as a community
func (a *Any) GetCommunity() (*Hub, error) {
	msg, err := a.GetValue()

	if err != nil {
		return nil, err
	}

	community, ok := msg.(*Hub)

	if !ok {
		return nil, ErrWrongType
	}

	return community, nil
}

// GetChannel unwraps the message encoded in any as a channel
func (a *Any) GetChannel() (*Channel, error) {
	msg, err := a.GetValue()

	if err != nil {
		return nil, err
	}

	channel, ok := msg.(*Channel)

	if !ok {
		return nil, ErrWrongType
	}

	return channel, nil
}

// GetSystemActionPayloadUserLoggedIn unwraps the message encoded in any as a SystemActionPayloadUserLoggedIn
func (a *Any) GetSystemActionPayloadUserLoggedIn() (*SystemActionPayloadUserLoggedIn, error) {
	msg, err := a.GetValue()

	if err != nil {
		return nil, err
	}

	payload, ok := msg.(*SystemActionPayloadUserLoggedIn)

	if !ok {
		return nil, ErrWrongType
	}

	return payload, nil
}

// GetValue unwraps the message encoded in any
func (a *Any) GetValue() (proto.Message, error) {
	if a == nil {
		return nil, ErrEmptyMessage
	}

	return Types.Unwrap(a)
}

// MarshalAny takes the protocol buffer and encodes it into google.protobuf.Any.
func MarshalAny(typeURL string, message proto.Message) (*Any, error) {
	value, err := proto.Marshal(message)
	if err != nil {
		return nil, err
	}
	return &Any{TypeUrl: typeURL, Value: value}, nil
}

// ErrEmptyMessage is returned if caller tries to unwrap a nil any message
var ErrEmptyMessage = errors.New("Cannot unwrap nil point any message")

// ErrNotRegistered is returned if a given type url is not registered in a type register
var ErrNotRegistered = errors.New("No type for given type url registered")

// ErrNoValue is returned if a given any message contains no data value
var ErrNoValue = errors.New("No data contained in message")

// ErrNoType is returned if a given any message contains no type url
var ErrNoType = errors.New("No type url contained in message")

// ErrUnmarshalFailed is returned if a given any message could not be unmarshaled to the registered proto type
var ErrUnmarshalFailed = errors.New("Unable to unmarshal any data")

// ErrWrongType is returned if a given any message could not be unmarshaled to a concrete type
var ErrWrongType = errors.New("Wrong type contained in any message")

// TypeRegister can be used to register proto messages that are wrapped in an any container
type TypeRegister map[string]reflect.Type

// Set registers new type
func (t TypeRegister) Set(typeURL string, message proto.Message) error {
	if reflect.ValueOf(message).Kind() != reflect.Ptr {
		return errors.New("TypeRegister.Set() argument must to be a pointer")
	}
	t[typeURL] = reflect.TypeOf(message)

	return nil
}

// Get element of type, if no one - err will be ErrNoOne
func (t TypeRegister) Get(typeURL string) (proto.Message, error) {
	if typ, ok := t[typeURL]; ok {
		return reflect.New(typ.Elem()).Elem().Addr().Interface().(proto.Message), nil
	}
	return nil, ErrNotRegistered
}

// Unmarshal returns a proto messages that was wrapped and encoded in an any message
func (t TypeRegister) Unmarshal(bytes []byte) (proto.Message, error) {
	var any Any
	err := proto.Unmarshal(bytes, &any)

	if err != nil {
		return nil, errors.Annotate(err, "Unable to unmarshal data into any message")
	}

	return t.Unwrap(&any)
}

// Unwrap returns a proto message that was wrapped in an any message
func (t TypeRegister) Unwrap(any *Any) (proto.Message, error) {
	if any.TypeUrl == "" {
		return nil, ErrNoType
	}

	if len(any.Value) == 0 {
		return nil, ErrNoValue
	}

	// Get pointer to wrapped element from TypeRegister
	message, err := t.Get(any.TypeUrl)
	if err != nil {
		return nil, err
	}

	err = proto.Unmarshal(any.Value, message)
	if err != nil {
		return nil, errors.Wrap(err, ErrUnmarshalFailed)
	}

	return message, nil
}
