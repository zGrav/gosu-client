package gosuproto

var groupMembershipTypeToMembershipTypeMapping = map[GroupMembershipRecord_MembershipType]MembershipEntry_MembershipType{
	GroupMembershipRecord_UNKNOWN:   MembershipEntry_UNKNOWN,
	GroupMembershipRecord_GUEST:     MembershipEntry_UNKNOWN,
	GroupMembershipRecord_NONE:      MembershipEntry_NONE,
	GroupMembershipRecord_MEMBER:    MembershipEntry_MEMBER,
	GroupMembershipRecord_MODERATOR: MembershipEntry_MODERATOR,
	GroupMembershipRecord_OWNER:     MembershipEntry_OWNER,
}

var membershipTypeToGroupMembershipTypeMapping = map[MembershipEntry_MembershipType]GroupMembershipRecord_MembershipType{
	MembershipEntry_UNKNOWN:   GroupMembershipRecord_UNKNOWN,
	MembershipEntry_BANNED:    GroupMembershipRecord_UNKNOWN,
	MembershipEntry_NONE:      GroupMembershipRecord_NONE,
	MembershipEntry_MEMBER:    GroupMembershipRecord_MEMBER,
	MembershipEntry_MODERATOR: GroupMembershipRecord_MODERATOR,
	MembershipEntry_OWNER:     GroupMembershipRecord_OWNER,
}

// ToMembershipType converts the group membership type to a membership type
func (t GroupMembershipRecord_MembershipType) ToMembershipType() MembershipEntry_MembershipType {
	ct, ok := groupMembershipTypeToMembershipTypeMapping[t]
	if !ok {
		return MembershipEntry_UNKNOWN
	}
	return ct
}

// ToGroupMembershipType converts the membership type to a group membership type
func (t MembershipEntry_MembershipType) ToGroupMembershipType() GroupMembershipRecord_MembershipType {
	ct, ok := membershipTypeToGroupMembershipTypeMapping[t]
	if !ok {
		return GroupMembershipRecord_UNKNOWN
	}
	return ct
}
