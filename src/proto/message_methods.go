package gosuproto

import "github.com/golang/protobuf/proto"

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
