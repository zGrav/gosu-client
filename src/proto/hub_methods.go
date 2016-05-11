package gosuproto

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
