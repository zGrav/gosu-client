package gosuproto

import "github.com/golang/protobuf/proto"
import "unicode/utf8"

// DeepCopy creates a deep copy of the message by marshaling/unmarshaling as proto
func (m *WebsocketMessage) DeepCopy() (*WebsocketMessage, error) {
	if m == nil {
		return nil, nil
	}
	messageCopyEnc, err := proto.Marshal(m)
	if err != nil {
		return nil, err
	}
	messageCopy := &WebsocketMessage{}
	err = proto.Unmarshal(messageCopyEnc, messageCopy)
	if err != nil {
		return nil, err
	}
	return messageCopy, nil
}

// GetUserMentions returns all user mentions contained in the message
func (m *WebsocketMessage) GetUserMentions() []*MessageBodyAnnotation {
	var annotations []*MessageBodyAnnotation
	if m.UserMessage != nil {
		annotations = append(annotations, m.UserMessage.GetBodyAnnotations()...)
	}
	if m.UserAction != nil {
		annotations = append(annotations, m.UserAction.GetBodyAnnotations()...)
	}
	return annotations
}

// GetBodyText returns the body text of the message
func (m *WebsocketMessage) GetBodyText() string {
	if m.Type == WebsocketMessage_CHAT_MESSAGE {
		if m.UserMessage != nil {
			return m.UserMessage.Body
		}
	}
	if m.Type == WebsocketMessage_USER_ACTION {
		if m.UserAction != nil {
			return m.UserAction.Body
		}
	}
	return ""
}

// GetRuneCount returns the rune count in the message
func (m *WebsocketMessage) GetRuneCount() int {
	return utf8.RuneCountInString(m.GetBodyText())
}

// GetUserMentions returns all user mentions contained in the message
func (m *UserMessage) GetUserMentions() []*MessageBodyAnnotation {
	var annotations []*MessageBodyAnnotation
	for _, annotation := range m.GetBodyAnnotations() {
		if annotation.Type == MessageBodyAnnotation_USER_MENTION {
			annotations = append(annotations, annotation)
		}
	}
	return annotations
}

// GetChannelLinkExtension tries to deserialize the proprietary bytes as MessageBodyAnnotationChannelLinkExtension
func (a *MessageBodyAnnotation) GetChannelLinkExtension() *MessageBodyAnnotationChannelLinkExtension {
	// get byte array
	if a.Proprietary == nil {
		return nil
	}

	// try to deserialize
	e := &MessageBodyAnnotationChannelLinkExtension{}
	err := proto.Unmarshal(a.Proprietary, e)
	if err != nil {
		return nil
	}

	return e
}

// SetChannelLinkExtension serializes the MessageBodyAnnotationChannelLinkExtension into the proprietary bytes array
func (a *MessageBodyAnnotation) SetChannelLinkExtension(e *MessageBodyAnnotationChannelLinkExtension) {
	// check input
	if e == nil {
		a.Proprietary = nil
	}

	// serialize message
	bytes, err := proto.Marshal(e)
	if err != nil {
		return
	}
	a.Proprietary = bytes
}

// RangeIsValid returns true if the range is valid
func (a *MessageBodyAnnotation) RangeIsValid() bool {
	if a.PosEnd < a.PosStart {
		return false
	}
	return true
}

// RangeLength returns the length of the annotation's range
func (a *MessageBodyAnnotation) RangeLength() int {
	if !a.RangeIsValid() {
		return 0
	}
	return int(a.PosEnd - a.PosStart)
}

// RangeIsEmpty returns true if the range has length zero
func (a *MessageBodyAnnotation) RangeIsEmpty() bool {
	return a.RangeLength() == 0
}
