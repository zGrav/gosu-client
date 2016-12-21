package gosuproto

// UserIsDirectUser returns true if the given user is contained in the direct user ids property of the channel
func (c *Channel) UserIsDirectUser(userID string) bool {
	return stringInSlice(userID, c.DirectUserIds)
}

func stringInSlice(a string, list []string) bool {
	for _, b := range list {
		if b == a {
			return true
		}
	}
	return false
}

// GetUnilateralDMChannelPartnerID gets dm channel partner id
func (c *Channel) GetUnilateralDMChannelPartnerID(ownUserID string) string {
	if c == nil {
		return ""
	}
	if ownUserID == "" {
		return ""
	}
	if c.Type != Channel_DIRECT {
		return ""
	}
	if len(c.DirectUserIds) != 2 {
		return ""
	}
	ownUserIDFound := false
	otherUserID := ""
	for _, userID := range c.DirectUserIds {
		if userID == ownUserID {
			ownUserIDFound = true
		} else {
			otherUserID = userID
		}
	}
	if !ownUserIDFound {
		return ""
	}
	return otherUserID
}

// GetUnilateralDMChannelPartnerID gets dm channel partner id
func (c *ChannelMembership) GetUnilateralDMChannelPartnerID(ownUserID string) string {
	return c.Channel.GetUnilateralDMChannelPartnerID(ownUserID)
}

// IsDMChannelBetween checks if the channel is a dm channel between the given users
func (c *Channel) IsDMChannelBetween(firstUserID string, secondUserID string) bool {
	if firstUserID == "" {
		return false
	}
	if secondUserID == "" {
		return false
	}
	if len(c.DirectUserIds) != 2 {
		return false
	}
	containsFirstUser := false
	containsSecondUser := false
	for _, userID := range c.DirectUserIds {
		if userID == firstUserID {
			containsFirstUser = true
		}
		if userID == secondUserID {
			containsSecondUser = true
		}
	}
	if !containsFirstUser || !containsSecondUser {
		return false
	}
	return true
}

// IsDMChannelBetween checks if the channel is a dm channel between the given users
func (c *ChannelMembership) IsDMChannelBetween(firstUserID string, secondUserID string) bool {
	if c.Channel == nil {
		return false
	}
	return c.IsDMChannelBetween(firstUserID, secondUserID)
}
