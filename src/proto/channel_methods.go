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
