package gosuproto

import (
	"errors"
)

// GetTitle returns the full channel title based on channel type
func (c *Channel) GetTitle() string {
	return c.Title
}

// ToChatUser generates a ChatUser from a User
func (user *User) ToChatUser() *ChatUser {
	if user == nil {
		return nil
	}
	chatUser := &ChatUser{
		Id:              user.Id,
		DisplayName:     user.DisplayName,
		AvatarImage:     user.AvatarImage,
		Status:          user.Status,
		BackgroundImage: user.BackgroundImage,
		Ephemeral:       user.Ephemeral,
	}
	return chatUser
}

// NewUser converts a map[string]interface{} to a User
func NewUser(values interface{}) (*User, error) {
	if m, ok := values.(map[string]interface{}); ok {
		user := &User{}

		if id, ok := getValue(m, "Id").(string); ok {
			user.Id = id
		}

		if name, ok := getValue(m, "DisplayName").(string); ok {
			user.DisplayName = name
		}

		if login, ok := getValue(m, "Login").(string); ok {
			user.Login = login
		}

		if password, ok := getValue(m, "Password").([]byte); ok {
			user.Password = password
		}

		if email, ok := getValue(m, "Email").(string); ok {
			user.Email = email
		}

		if avatar, ok := getValue(m, "AvatarImage").(string); ok {
			user.AvatarImage = avatar
		}

		if status, ok := getValue(m, "Status").(float64); ok {
			user.Status = User_UserStatus(int32(status))
		}

		if channels, ok := getValue(m, "ChannelIds").([]interface{}); ok {
			ids := make([]string, len(channels))

			for i, v := range channels {
				if id, ok := v.(string); ok {
					ids[i] = id
				}
			}

			user.ChannelIds = ids
		}

		return user, nil
	}

	return nil, errors.New("Values param must be a map")
}

func getValue(values map[string]interface{}, key string) interface{} {
	if v, ok := values[key]; ok {
		return v
	}

	return nil
}

// IsInChannel checks for a channel id in the user's channels
func (user *User) IsInChannel(channelID string) bool {
	for _, cID := range user.ChannelIds {
		if cID == channelID {
			return true
		}
	}
	return false
}

// NewChannel converts a map[string]interface{} to a Channel
func NewChannel(values interface{}) (*Channel, error) {
	if m, ok := values.(map[string]interface{}); ok {
		channel := &Channel{}

		if id, ok := getValue(m, "Id").(string); ok {
			channel.Id = id
		}

		if title, ok := getValue(m, "Title").(string); ok {
			channel.Title = title
		}

		if channelType, ok := getValue(m, "Type").(float64); ok {
			channel.Type = Channel_ChannelType(channelType)
		}

		if groupID, ok := getValue(m, "GroupId").(string); ok {
			channel.GroupId = groupID
		}

		if gameID, ok := getValue(m, "GameId").(string); ok {
			channel.GameId = gameID
		}

		if users, ok := getValue(m, "DirectUserIds").([]interface{}); ok {
			ids := make([]string, len(users))

			for i, v := range users {
				if id, ok := v.(string); ok {
					ids[i] = id
				}
			}

			channel.DirectUserIds = ids
		}

		if t, ok := getValue(m, "Tags").([]interface{}); ok {
			tags := make([]string, len(t))

			for i, v := range t {
				if tag, ok := v.(string); ok {
					tags[i] = tag
				}
			}

			channel.Tags = tags
		}

		return channel, nil
	}

	return nil, errors.New("Values param must be a map")
}

// NewChannelMembershipRecord converts a map[string]interface{} to a ChannelMembershipRecord
func NewChannelMembershipRecord(values interface{}) (*ChannelMembershipRecord, error) {
	if m, ok := values.(map[string]interface{}); ok {
		record := &ChannelMembershipRecord{}

		if id, ok := getValue(m, "Id").(string); ok {
			record.Id = id
		}

		if channelID, ok := getValue(m, "ChannelId").(string); ok {
			record.ChannelId = channelID
		}

		if userID, ok := getValue(m, "UserId").(string); ok {
			record.UserId = userID
		}

		if membershipType, ok := getValue(m, "Type").(float64); ok {
			record.Type = ChannelMembershipRecord_MembershipType(membershipType)
		}

		if channel, ok := getValue(m, "Channel").(interface{}); ok {
			c, err := NewChannel(channel)
			if err != nil {
				return nil, errors.New("error parsing channel")
			}
			record.Channel = c
		}

		if user, ok := getValue(m, "User").(interface{}); ok {
			u, err := NewUser(user)
			if err != nil {
				return nil, errors.New("error parsing user")
			}
			record.User = u
		}

		if voiceStatus, ok := getValue(m, "VoiceStatus").(float64); ok {
			record.VoiceStatus = ChannelMembershipRecord_VoiceStatus(voiceStatus)
		}

		return record, nil
	}

	return nil, errors.New("Values param must be a map")
}

// NewUserAgent converts a map[string]interface{} to a UserAgent
func NewUserAgent(values interface{}) (*UserAgent, error) {
	if m, ok := values.(map[string]interface{}); ok {
		agent := &UserAgent{}

		if id, ok := getValue(m, "Id").(string); ok {
			agent.Id = id
		}

		if userID, ok := getValue(m, "UserId").(string); ok {
			agent.UserId = userID
		}

		if name, ok := getValue(m, "Name").(string); ok {
			agent.Name = name
		}

		if agentType, ok := getValue(m, "Type").(float64); ok {
			agent.Type = UserAgent_UserAgentType(int32(agentType))
		}

		if token, ok := getValue(m, "LastToken").(string); ok {
			agent.LastToken = token
		}

		if login, ok := getValue(m, "LastLogin").(string); ok {
			agent.LastLogin = login
		}

		if ip, ok := getValue(m, "LastIp").(string); ok {
			agent.LastIp = ip
		}

		return agent, nil
	}

	return nil, errors.New("Values param must be a map")
}

// NewGroup converts a map[string]interface{} to a Group
// Will only set id, owner and name
func NewGroup(values interface{}) (*Group, error) {
	if m, ok := values.(map[string]interface{}); ok {
		group := &Group{}

		if id, ok := getValue(m, "Id").(string); ok {
			group.Id = id
		}

		if ownerID, ok := getValue(m, "Owner").(string); ok {
			group.Owner = ownerID
		}

		if name, ok := getValue(m, "Name").(string); ok {
			group.Name = name
		}

		return group, nil
	}

	return nil, errors.New("Values param must be a map")
}

// RemoveChannel removes the specified channel from the object's ChannelIds, Channels and ChannelMemberships
func (user *User) RemoveChannel(channelID string) {
	var updatedChannelIds []string
	var updatedChannels []*Channel
	var updatedChannelMemberships []*ChannelMembership
	for _, cID := range user.ChannelIds {
		if cID != channelID {
			updatedChannelIds = append(updatedChannelIds, cID)
		}
	}
	for _, c := range user.Channels {
		if c.Id != channelID {
			updatedChannels = append(updatedChannels, c)
		}
	}
	for _, cMembership := range user.ChannelMemberships {
		if cMembership.ChannelId != channelID {
			updatedChannelMemberships = append(updatedChannelMemberships, cMembership)
		}
	}
	user.ChannelIds = updatedChannelIds
	user.Channels = updatedChannels
	user.ChannelMemberships = updatedChannelMemberships
}

// ToGroupMembership creates a GroupMembership from a GroupMembershipRecord
func (membershipRecord *GroupMembershipRecord) ToGroupMembership() *GroupMembership {
	membership := &GroupMembership{
		Group:  membershipRecord.Group,
		TypeV1: membershipRecord.Type.ToTypeV1(),

		GroupId:     membershipRecord.GroupId,
		UserId:      membershipRecord.UserId,
		Type:        membershipRecord.Type,
		Permissions: membershipRecord.Permissions,
	}
	return membership
}

// ToChannelMembership creates a ChannelMembership from a ChannelMembershipRecord
func (membershipRecord *ChannelMembershipRecord) ToChannelMembership() *ChannelMembership {
	membership := &ChannelMembership{
		ChannelId: membershipRecord.ChannelId,
		UserId:    membershipRecord.UserId,
		Type:      membershipRecord.Type,
		Channel:   membershipRecord.Channel,
	}
	return membership
}

// ToTypeV1 converts the group membership type to the deprecated membership type used in the v1 api
func (t GroupMembershipRecord_MembershipType) ToTypeV1() GroupMembershipTypeV1 {
	switch t {
	case GroupMembershipRecord_UNKNOWN:
		return GroupMembershipTypeV1_UNKNOWN

	case GroupMembershipRecord_NONE:
		return GroupMembershipTypeV1_UNKNOWN

	case GroupMembershipRecord_GUEST:
		return GroupMembershipTypeV1_GUEST

	case GroupMembershipRecord_MEMBER:
		return GroupMembershipTypeV1_MEMBER

	case GroupMembershipRecord_MODERATOR:
		return GroupMembershipTypeV1_MEMBER

	case GroupMembershipRecord_OWNER:
		return GroupMembershipTypeV1_MEMBER
	}
	return GroupMembershipTypeV1_UNKNOWN
}

// ToChannelUserTypeV1 converts the membership type
func (t MembershipEntry_MembershipType) ToChannelUserTypeV1() ChannelUser_ChannelUserType {
	switch t {
	case MembershipEntry_UNKNOWN, MembershipEntry_NONE, MembershipEntry_BANNED:
		return ChannelUser_UNKNOWN

	case MembershipEntry_MEMBER:
		return ChannelUser_MEMBER

	case MembershipEntry_MODERATOR:
		return ChannelUser_MEMBER

	case MembershipEntry_OWNER:
		return ChannelUser_OWNER
	}
	return ChannelUser_UNKNOWN
}

// ToChannelMembershipType converts the membership type
func (t MembershipEntry_MembershipType) ToChannelMembershipType() ChannelMembershipRecord_MembershipType {
	switch t {
	case MembershipEntry_UNKNOWN, MembershipEntry_BANNED:
		return ChannelMembershipRecord_UNKNOWN

	case MembershipEntry_NONE:
		return ChannelMembershipRecord_NONE

	case MembershipEntry_MEMBER:
		return ChannelMembershipRecord_SUBSCRIBER

	case MembershipEntry_MODERATOR:
		return ChannelMembershipRecord_MODERATOR

	case MembershipEntry_OWNER:
		return ChannelMembershipRecord_OWNER
	}
	return ChannelMembershipRecord_UNKNOWN
}

// GetChannelMembershipRecordMapByUserID turns a slice of channel membership records into a map by user id
func GetChannelMembershipRecordMapByUserID(a []*ChannelMembershipRecord) map[string]*ChannelMembershipRecord {
	m := map[string]*ChannelMembershipRecord{}
	for _, r := range a {
		m[r.UserId] = r
	}
	return m
}

// ToConvertEphemeralUserErrorType converts between the two error types
func (e AuthRegisterResponse_ErrorType) ToConvertEphemeralUserErrorType() UserConvertEphemeralUserResponse_ErrorType {
	switch e {
	case AuthRegisterResponse_DISPLAYNAME_INVALID:
		return UserConvertEphemeralUserResponse_USERNAME_INVALID

	case AuthRegisterResponse_DISPLAYNAME_TAKEN:
		return UserConvertEphemeralUserResponse_USERNAME_TAKEN

	case AuthRegisterResponse_EMAIL_INVALID:
		return UserConvertEphemeralUserResponse_EMAIL_INVALID

	case AuthRegisterResponse_EMAIL_TAKEN:
		return UserConvertEphemeralUserResponse_EMAIL_TAKEN

	case AuthRegisterResponse_NONE:
		return UserConvertEphemeralUserResponse_NONE

	case AuthRegisterResponse_PW_BAD:
		return UserConvertEphemeralUserResponse_PW_BAD

	case AuthRegisterResponse_PW_TOO_SHORT:
		return UserConvertEphemeralUserResponse_PW_TOO_SHORT

	case AuthRegisterResponse_SERVER_ERROR:
		return UserConvertEphemeralUserResponse_UNKNOWN_ERROR

	case AuthRegisterResponse_USERNAME_INVALID:
		return UserConvertEphemeralUserResponse_USERNAME_INVALID

	case AuthRegisterResponse_USERNAME_TAKEN:
		return UserConvertEphemeralUserResponse_USERNAME_TAKEN

	default:
		return UserConvertEphemeralUserResponse_UNKNOWN_ERROR
	}
}

// ToMembershipType converts the channel membership type to a membership type
func (t ChannelMembershipRecord_MembershipType) ToMembershipType() MembershipEntry_MembershipType {
	switch t {
	case ChannelMembershipRecord_UNKNOWN:
		return MembershipEntry_UNKNOWN

	case ChannelMembershipRecord_NONE:
		return MembershipEntry_NONE

	case ChannelMembershipRecord_SUBSCRIBER:
		return MembershipEntry_MEMBER

	case ChannelMembershipRecord_MODERATOR, ChannelMembershipRecord_MODERATOR_GROUP:
		return MembershipEntry_MODERATOR

	case ChannelMembershipRecord_OWNER:
		return MembershipEntry_OWNER

	default:
		return MembershipEntry_UNKNOWN
	}
}
