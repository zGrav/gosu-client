package gosuproto

import (
	"math"
)

// GetMaxMessageLength returns the max message length
func (h *Hub) GetMaxMessageLength(ephemeral bool) int {
	return h.getRestrictedValue(ephemeral, int(h.MaxMessageLength), int(h.MaxMessageLengthEphemeral))
}

// GetMaxMessagesPerMinute returns the max messages per minute
func (h *Hub) GetMaxMessagesPerMinute(ephemeral bool) int {
	return h.getRestrictedValue(ephemeral, int(h.MaxMessagesPerMinute), int(h.MaxMessagesPerMinuteEphemeral))
}

func (h *Hub) getRestrictedValue(ephemeral bool, nonEphemeralValue int, ephemeralValue int) int {
	if !ephemeral {
		return nonEphemeralValue
	}
	if ephemeralValue > nonEphemeralValue {
		return nonEphemeralValue
	}
	if ephemeralValue == 0 {
		return nonEphemeralValue
	}
	return ephemeralValue
}

var hubMembershipTypeToMembershipTypeMapping = map[HubMembershipRecord_MembershipType]MembershipEntry_MembershipType{
	HubMembershipRecord_UNKNOWN:         MembershipEntry_UNKNOWN,
	HubMembershipRecord_BANNED:          MembershipEntry_BANNED,
	HubMembershipRecord_NONE:            MembershipEntry_NONE,
	HubMembershipRecord_MEMBER:          MembershipEntry_MEMBER,
	HubMembershipRecord_MODERATOR:       MembershipEntry_MODERATOR,
	HubMembershipRecord_MODERATOR_GROUP: MembershipEntry_MODERATOR,
	HubMembershipRecord_OWNER:           MembershipEntry_OWNER,
}

var hubMembershipTypeToExternalMembershipTypeMapping = map[HubMembershipRecord_MembershipType]ExternalMembershipEntry_MembershipType{
	HubMembershipRecord_UNKNOWN:         ExternalMembershipEntry_UNKNOWN,
	HubMembershipRecord_BANNED:          ExternalMembershipEntry_UNKNOWN,
	HubMembershipRecord_NONE:            ExternalMembershipEntry_NONE,
	HubMembershipRecord_MEMBER:          ExternalMembershipEntry_MEMBER,
	HubMembershipRecord_MODERATOR:       ExternalMembershipEntry_MODERATOR,
	HubMembershipRecord_MODERATOR_GROUP: ExternalMembershipEntry_MODERATOR,
	HubMembershipRecord_OWNER:           ExternalMembershipEntry_OWNER,
}

var membershipTypeToHubMembershipTypeMapping = map[MembershipEntry_MembershipType]HubMembershipRecord_MembershipType{
	MembershipEntry_UNKNOWN:   HubMembershipRecord_UNKNOWN,
	MembershipEntry_BANNED:    HubMembershipRecord_BANNED,
	MembershipEntry_NONE:      HubMembershipRecord_NONE,
	MembershipEntry_MEMBER:    HubMembershipRecord_MEMBER,
	MembershipEntry_MODERATOR: HubMembershipRecord_MODERATOR,
	MembershipEntry_OWNER:     HubMembershipRecord_OWNER,
}

var createErrorToValidateTitleMapping = map[RPCHubCreateHubResponse_ErrorType]RPCHubValidateTitleResponse_ErrorType{
	RPCHubCreateHubResponse_TITLE_INVALID:   RPCHubValidateTitleResponse_TITLE_INVALID,
	RPCHubCreateHubResponse_TITLE_TOO_SHORT: RPCHubValidateTitleResponse_TITLE_TOO_SHORT,
	RPCHubCreateHubResponse_TITLE_TOO_LONG:  RPCHubValidateTitleResponse_TITLE_TOO_LONG,
}

// ToMembershipType converts the hub membership type to a membership type
func (t HubMembershipRecord_MembershipType) ToMembershipType() MembershipEntry_MembershipType {
	ct, ok := hubMembershipTypeToMembershipTypeMapping[t]
	if !ok {
		return MembershipEntry_UNKNOWN
	}
	return ct
}

// ToExternalMembershipType converts the hub membership type to an external membership type
func (t HubMembershipRecord_MembershipType) ToExternalMembershipType() ExternalMembershipEntry_MembershipType {
	ct, ok := hubMembershipTypeToExternalMembershipTypeMapping[t]
	if !ok {
		return ExternalMembershipEntry_UNKNOWN
	}
	return ct
}

// ToHubMembershipType converts the membership type to a hub membership type
func (t MembershipEntry_MembershipType) ToHubMembershipType() HubMembershipRecord_MembershipType {
	ct, ok := membershipTypeToHubMembershipTypeMapping[t]
	if !ok {
		return HubMembershipRecord_UNKNOWN
	}
	return ct
}

// ToValidateTitleErrorType converts the create error type to a validate title error type
func (e RPCHubCreateHubResponse_ErrorType) ToValidateTitleErrorType() RPCHubValidateTitleResponse_ErrorType {
	ct, ok := createErrorToValidateTitleMapping[e]
	if !ok {
		return RPCHubValidateTitleResponse_SERVER_ERROR
	}
	return ct
}

// ToHubMembership creates a HubMembership from a HubMembershipRecord
func (membershipRecord *HubMembershipRecord) ToHubMembership() *HubMembership {
	membership := &HubMembership{
		Hub: membershipRecord.Hub,

		HubId:       membershipRecord.HubId,
		UserId:      membershipRecord.UserId,
		Type:        membershipRecord.Type,
		Permissions: membershipRecord.Permissions,
	}
	return membership
}

// ToAddMembersResponseErrorType converts the error type
func (e RPCHubAddMemberResponse_ErrorType) ToAddMembersResponseErrorType() HubAddMembersResponseEntry_ErrorType {
	switch e {
	case RPCHubAddMemberResponse_ALREADY_BANNED:
		return HubAddMembersResponseEntry_ALREADY_BANNED

	case RPCHubAddMemberResponse_ALREADY_MEMBER:
		return HubAddMembersResponseEntry_ALREADY_MEMBER

	case RPCHubAddMemberResponse_ALREADY_PENDING:
		return HubAddMembersResponseEntry_ALREADY_PENDING

	case RPCHubAddMemberResponse_BAD_REQUEST:
		return HubAddMembersResponseEntry_UNKNOWN_ERROR

	case RPCHubAddMemberResponse_FORBIDDEN:
		return HubAddMembersResponseEntry_UNKNOWN_ERROR

	case RPCHubAddMemberResponse_INVALID_EMAIL:
		return HubAddMembersResponseEntry_INVALID_EMAIL

	case RPCHubAddMemberResponse_INVALID_MEMBERSHIP_TYPE:
		return HubAddMembersResponseEntry_INVALID_MEMBERSHIP_TYPE

	case RPCHubAddMemberResponse_INVALID_USER_ID:
		return HubAddMembersResponseEntry_INVALID_USER_ID

	case RPCHubAddMemberResponse_UNKNOWN_ERROR:
		return HubAddMembersResponseEntry_UNKNOWN_ERROR

	case RPCHubAddMemberResponse_NONE:
		return HubAddMembersResponseEntry_NONE
	}
	return HubAddMembersResponseEntry_UNKNOWN_ERROR
}

// IsValid checks if the location is valid
func (g *GeoLocation) IsValid() bool {
	if math.IsNaN(float64(g.Lat)) {
		return false
	}
	if math.IsNaN(float64(g.Lng)) {
		return false
	}
	if g.Lat < -90.0 {
		return false
	}
	if g.Lat > 90.0 {
		return false
	}
	if g.Lng < -180.0 {
		return false
	}
	if g.Lng > 180.0 {
		return false
	}
	return true
}

// IsNull checks if the location is null
func (g *GeoLocation) IsNull() bool {
	if g.Lat == 0.0 && g.Lng == 0.0 {
		return true
	}
	return false
}
