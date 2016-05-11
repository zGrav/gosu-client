#import "Rpc.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Api.pbobjc.h"
#import "Profile.pbobjc.h"
#import "ProfileUserinfo.pbobjc.h"
#import "Optional.pbobjc.h"
#import "Prefs.pbobjc.h"
#import "Wrappers.pbobjc.h"
#import "HubBase.pbobjc.h"
#import "Hub.pbobjc.h"

@protocol UserService <NSObject>

#pragma mark Login(RPCAuthLoginRequest) returns (AuthLoginResponse)

- (void)loginWithRequest:(RPCAuthLoginRequest *)request handler:(void(^)(AuthLoginResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToLoginWithRequest:(RPCAuthLoginRequest *)request handler:(void(^)(AuthLoginResponse *response, NSError *error))handler;


#pragma mark Register(RPCAuthRegisterRequest) returns (AuthRegisterResponse)

- (void)registerWithRequest:(RPCAuthRegisterRequest *)request handler:(void(^)(AuthRegisterResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToRegisterWithRequest:(RPCAuthRegisterRequest *)request handler:(void(^)(AuthRegisterResponse *response, NSError *error))handler;


#pragma mark ConvertEphemeralUser(RPCUserConvertEphemeralUserRequest) returns (RPCUserConvertEphemeralUserResponse)

- (void)convertEphemeralUserWithRequest:(RPCUserConvertEphemeralUserRequest *)request handler:(void(^)(RPCUserConvertEphemeralUserResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToConvertEphemeralUserWithRequest:(RPCUserConvertEphemeralUserRequest *)request handler:(void(^)(RPCUserConvertEphemeralUserResponse *response, NSError *error))handler;


#pragma mark GetUser(RPCUserGetUserRequest) returns (RPCUserGetUserResponse)

- (void)getUserWithRequest:(RPCUserGetUserRequest *)request handler:(void(^)(RPCUserGetUserResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetUserWithRequest:(RPCUserGetUserRequest *)request handler:(void(^)(RPCUserGetUserResponse *response, NSError *error))handler;


#pragma mark DeleteUser(RPCUserDeleteUserRequest) returns (RPCUserDeleteUserResponse)

- (void)deleteUserWithRequest:(RPCUserDeleteUserRequest *)request handler:(void(^)(RPCUserDeleteUserResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToDeleteUserWithRequest:(RPCUserDeleteUserRequest *)request handler:(void(^)(RPCUserDeleteUserResponse *response, NSError *error))handler;


#pragma mark RemoveUserFromHubs(RPCUserRemoveUserFromHubsRequest) returns (RPCUserRemoveUserFromHubsResponse)

- (void)removeUserFromHubsWithRequest:(RPCUserRemoveUserFromHubsRequest *)request handler:(void(^)(RPCUserRemoveUserFromHubsResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToRemoveUserFromHubsWithRequest:(RPCUserRemoveUserFromHubsRequest *)request handler:(void(^)(RPCUserRemoveUserFromHubsResponse *response, NSError *error))handler;


#pragma mark ValidateUsername(RPCUserValidateUsernameRequest) returns (RPCUserValidateUsernameResponse)

- (void)validateUsernameWithRequest:(RPCUserValidateUsernameRequest *)request handler:(void(^)(RPCUserValidateUsernameResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToValidateUsernameWithRequest:(RPCUserValidateUsernameRequest *)request handler:(void(^)(RPCUserValidateUsernameResponse *response, NSError *error))handler;


#pragma mark GetUserAgent(RPCUserGetUserAgentRequest) returns (RPCUserGetUserAgentResponse)

- (void)getUserAgentWithRequest:(RPCUserGetUserAgentRequest *)request handler:(void(^)(RPCUserGetUserAgentResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetUserAgentWithRequest:(RPCUserGetUserAgentRequest *)request handler:(void(^)(RPCUserGetUserAgentResponse *response, NSError *error))handler;


#pragma mark GetOwnProfile(RPCUserGetOwnProfileRequest) returns (RPCUserGetOwnProfileResponse)

- (void)getOwnProfileWithRequest:(RPCUserGetOwnProfileRequest *)request handler:(void(^)(RPCUserGetOwnProfileResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetOwnProfileWithRequest:(RPCUserGetOwnProfileRequest *)request handler:(void(^)(RPCUserGetOwnProfileResponse *response, NSError *error))handler;


#pragma mark GetOtherProfile(RPCUserGetOtherProfileRequest) returns (RPCUserGetOtherProfileResponse)

- (void)getOtherProfileWithRequest:(RPCUserGetOtherProfileRequest *)request handler:(void(^)(RPCUserGetOtherProfileResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetOtherProfileWithRequest:(RPCUserGetOtherProfileRequest *)request handler:(void(^)(RPCUserGetOtherProfileResponse *response, NSError *error))handler;


#pragma mark UpdateUser(RPCUserUpdateRequest) returns (RPCUserUpdateResponse)

- (void)updateUserWithRequest:(RPCUserUpdateRequest *)request handler:(void(^)(RPCUserUpdateResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToUpdateUserWithRequest:(RPCUserUpdateRequest *)request handler:(void(^)(RPCUserUpdateResponse *response, NSError *error))handler;


#pragma mark RequestFriendship(RPCUserFriendshipRequest) returns (RPCUserFriendshipRequestResponse)

- (void)requestFriendshipWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCUserFriendshipRequestResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToRequestFriendshipWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCUserFriendshipRequestResponse *response, NSError *error))handler;


#pragma mark Unfriend(RPCUserFriendshipRequest) returns (RPCGenericResponse)

- (void)unfriendWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCGenericResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToUnfriendWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCGenericResponse *response, NSError *error))handler;


#pragma mark GetFriends(RPCUserGetFriendsRequest) returns (RPCUserGetFriendsResponse)

- (void)getFriendsWithRequest:(RPCUserGetFriendsRequest *)request handler:(void(^)(RPCUserGetFriendsResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetFriendsWithRequest:(RPCUserGetFriendsRequest *)request handler:(void(^)(RPCUserGetFriendsResponse *response, NSError *error))handler;


#pragma mark RequestActivationEmail(RPCUserActivationEmailRequest) returns (RPCUserActivationEmailResponse)

- (void)requestActivationEmailWithRequest:(RPCUserActivationEmailRequest *)request handler:(void(^)(RPCUserActivationEmailResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToRequestActivationEmailWithRequest:(RPCUserActivationEmailRequest *)request handler:(void(^)(RPCUserActivationEmailResponse *response, NSError *error))handler;


#pragma mark ExecuteActivation(RPCUserExecuteActivationRequest) returns (RPCUserExecuteActivationResponse)

- (void)executeActivationWithRequest:(RPCUserExecuteActivationRequest *)request handler:(void(^)(RPCUserExecuteActivationResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToExecuteActivationWithRequest:(RPCUserExecuteActivationRequest *)request handler:(void(^)(RPCUserExecuteActivationResponse *response, NSError *error))handler;


#pragma mark RequestPasswordReset(RPCUserPasswordResetEmailRequest) returns (RPCUserPasswordResetEmailResponse)

- (void)requestPasswordResetWithRequest:(RPCUserPasswordResetEmailRequest *)request handler:(void(^)(RPCUserPasswordResetEmailResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToRequestPasswordResetWithRequest:(RPCUserPasswordResetEmailRequest *)request handler:(void(^)(RPCUserPasswordResetEmailResponse *response, NSError *error))handler;


#pragma mark ExecutePasswordReset(RPCUserExecutePasswordResetRequest) returns (RPCUserExecutePasswordResetResponse)

- (void)executePasswordResetWithRequest:(RPCUserExecutePasswordResetRequest *)request handler:(void(^)(RPCUserExecutePasswordResetResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToExecutePasswordResetWithRequest:(RPCUserExecutePasswordResetRequest *)request handler:(void(^)(RPCUserExecutePasswordResetResponse *response, NSError *error))handler;


#pragma mark UpdatePassword(RPCUserUpdatePasswordRequest) returns (RPCUserUpdatePasswordResponse)

- (void)updatePasswordWithRequest:(RPCUserUpdatePasswordRequest *)request handler:(void(^)(RPCUserUpdatePasswordResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToUpdatePasswordWithRequest:(RPCUserUpdatePasswordRequest *)request handler:(void(^)(RPCUserUpdatePasswordResponse *response, NSError *error))handler;


#pragma mark GetUserProfile(RPCProfileGetRequest) returns (UserProfile)

- (void)getUserProfileWithRequest:(RPCProfileGetRequest *)request handler:(void(^)(UserProfile *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetUserProfileWithRequest:(RPCProfileGetRequest *)request handler:(void(^)(UserProfile *response, NSError *error))handler;


#pragma mark UpdateGameEntry(UserGame) returns (UserProfile)

- (void)updateGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *response, NSError *error))handler;

- (ProtoRPC *)RPCToUpdateGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *response, NSError *error))handler;


#pragma mark DeleteGameEntry(UserGame) returns (UserProfile)

- (void)deleteGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *response, NSError *error))handler;

- (ProtoRPC *)RPCToDeleteGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *response, NSError *error))handler;


#pragma mark UpdateUserAccount(UserAccount) returns (UserProfile)

- (void)updateUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *response, NSError *error))handler;

- (ProtoRPC *)RPCToUpdateUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *response, NSError *error))handler;


#pragma mark DeleteUserAccount(UserAccount) returns (UserProfile)

- (void)deleteUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *response, NSError *error))handler;

- (ProtoRPC *)RPCToDeleteUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *response, NSError *error))handler;


#pragma mark SetChannelRole(RPCUserSetChannelRoleRequest) returns (RPCUserSetChannelRoleResponse)

- (void)setChannelRoleWithRequest:(RPCUserSetChannelRoleRequest *)request handler:(void(^)(RPCUserSetChannelRoleResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToSetChannelRoleWithRequest:(RPCUserSetChannelRoleRequest *)request handler:(void(^)(RPCUserSetChannelRoleResponse *response, NSError *error))handler;


#pragma mark SetGroupRole(RPCUserSetGroupRoleRequest) returns (RPCUserSetGroupRoleResponse)

- (void)setGroupRoleWithRequest:(RPCUserSetGroupRoleRequest *)request handler:(void(^)(RPCUserSetGroupRoleResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToSetGroupRoleWithRequest:(RPCUserSetGroupRoleRequest *)request handler:(void(^)(RPCUserSetGroupRoleResponse *response, NSError *error))handler;


#pragma mark CreateProprietaryGroupMembership(RPCCreateRelationRequest) returns (RPCCreateRelationResponse)

- (void)createProprietaryGroupMembershipWithRequest:(RPCCreateRelationRequest *)request handler:(void(^)(RPCCreateRelationResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToCreateProprietaryGroupMembershipWithRequest:(RPCCreateRelationRequest *)request handler:(void(^)(RPCCreateRelationResponse *response, NSError *error))handler;


#pragma mark UpdateVoiceStatus(RPCUserUpdateVoiceStatusRequest) returns (RPCUserUpdateVoiceStatusResponse)

- (void)updateVoiceStatusWithRequest:(RPCUserUpdateVoiceStatusRequest *)request handler:(void(^)(RPCUserUpdateVoiceStatusResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToUpdateVoiceStatusWithRequest:(RPCUserUpdateVoiceStatusRequest *)request handler:(void(^)(RPCUserUpdateVoiceStatusResponse *response, NSError *error))handler;


@end

// Basic service implementation, over gRPC, that only does marshalling and parsing.
@interface UserService : ProtoService<UserService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
@protocol GroupService <NSObject>

#pragma mark CreateGroup(RPCGroupCreateGroupRequest) returns (RPCGroupCreateGroupResponse)

- (void)createGroupWithRequest:(RPCGroupCreateGroupRequest *)request handler:(void(^)(RPCGroupCreateGroupResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToCreateGroupWithRequest:(RPCGroupCreateGroupRequest *)request handler:(void(^)(RPCGroupCreateGroupResponse *response, NSError *error))handler;


#pragma mark EditGroup(RPCGroupEditGroupRequest) returns (RPCGroupEditGroupResponse)

- (void)editGroupWithRequest:(RPCGroupEditGroupRequest *)request handler:(void(^)(RPCGroupEditGroupResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToEditGroupWithRequest:(RPCGroupEditGroupRequest *)request handler:(void(^)(RPCGroupEditGroupResponse *response, NSError *error))handler;


#pragma mark GetGroup(RPCGroupGetGroupRequest) returns (RPCGroupGetGroupResponse)

- (void)getGroupWithRequest:(RPCGroupGetGroupRequest *)request handler:(void(^)(RPCGroupGetGroupResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetGroupWithRequest:(RPCGroupGetGroupRequest *)request handler:(void(^)(RPCGroupGetGroupResponse *response, NSError *error))handler;


#pragma mark GetGroups(RPCGroupGetGroupsRequest) returns (RPCGroupGetGroupsResponse)

- (void)getGroupsWithRequest:(RPCGroupGetGroupsRequest *)request handler:(void(^)(RPCGroupGetGroupsResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetGroupsWithRequest:(RPCGroupGetGroupsRequest *)request handler:(void(^)(RPCGroupGetGroupsResponse *response, NSError *error))handler;


#pragma mark GetGroupsForUser(RPCGroupGetGroupsForUserRequest) returns (RPCGroupGetGroupsForUserResponse)

- (void)getGroupsForUserWithRequest:(RPCGroupGetGroupsForUserRequest *)request handler:(void(^)(RPCGroupGetGroupsForUserResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetGroupsForUserWithRequest:(RPCGroupGetGroupsForUserRequest *)request handler:(void(^)(RPCGroupGetGroupsForUserResponse *response, NSError *error))handler;


#pragma mark AddGroupMember(RPCGroupAddGroupMemberRequest) returns (RPCGroupAddGroupMemberResponse)

- (void)addGroupMemberWithRequest:(RPCGroupAddGroupMemberRequest *)request handler:(void(^)(RPCGroupAddGroupMemberResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToAddGroupMemberWithRequest:(RPCGroupAddGroupMemberRequest *)request handler:(void(^)(RPCGroupAddGroupMemberResponse *response, NSError *error))handler;


#pragma mark AddGroupMembers(RPCGroupAddGroupMembersRequest) returns (RPCGroupAddGroupMembersResponse)

- (void)addGroupMembersWithRequest:(RPCGroupAddGroupMembersRequest *)request handler:(void(^)(RPCGroupAddGroupMembersResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToAddGroupMembersWithRequest:(RPCGroupAddGroupMembersRequest *)request handler:(void(^)(RPCGroupAddGroupMembersResponse *response, NSError *error))handler;


#pragma mark RemoveGroupMember(RPCGroupRemoveGroupMemberRequest) returns (RPCGroupRemoveGroupMemberResponse)

- (void)removeGroupMemberWithRequest:(RPCGroupRemoveGroupMemberRequest *)request handler:(void(^)(RPCGroupRemoveGroupMemberResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToRemoveGroupMemberWithRequest:(RPCGroupRemoveGroupMemberRequest *)request handler:(void(^)(RPCGroupRemoveGroupMemberResponse *response, NSError *error))handler;


#pragma mark CheckGroupMembership(RPCGroupCheckGroupMembershipRequest) returns (RPCGroupCheckGroupMembershipResponse)

- (void)checkGroupMembershipWithRequest:(RPCGroupCheckGroupMembershipRequest *)request handler:(void(^)(RPCGroupCheckGroupMembershipResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToCheckGroupMembershipWithRequest:(RPCGroupCheckGroupMembershipRequest *)request handler:(void(^)(RPCGroupCheckGroupMembershipResponse *response, NSError *error))handler;


#pragma mark CreateInviteCode(RPCGroupCreateInviteCodeRequest) returns (RPCGroupCreateInviteCodeResponse)

- (void)createInviteCodeWithRequest:(RPCGroupCreateInviteCodeRequest *)request handler:(void(^)(RPCGroupCreateInviteCodeResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToCreateInviteCodeWithRequest:(RPCGroupCreateInviteCodeRequest *)request handler:(void(^)(RPCGroupCreateInviteCodeResponse *response, NSError *error))handler;


#pragma mark GetInviteCodeInfo(RPCGroupGetInviteCodeInfoRequest) returns (RPCGroupGetInviteCodeInfoResponse)

- (void)getInviteCodeInfoWithRequest:(RPCGroupGetInviteCodeInfoRequest *)request handler:(void(^)(RPCGroupGetInviteCodeInfoResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetInviteCodeInfoWithRequest:(RPCGroupGetInviteCodeInfoRequest *)request handler:(void(^)(RPCGroupGetInviteCodeInfoResponse *response, NSError *error))handler;


#pragma mark AcceptInvite(RPCGroupAcceptInviteRequest) returns (RPCGroupAcceptInviteResponse)

- (void)acceptInviteWithRequest:(RPCGroupAcceptInviteRequest *)request handler:(void(^)(RPCGroupAcceptInviteResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToAcceptInviteWithRequest:(RPCGroupAcceptInviteRequest *)request handler:(void(^)(RPCGroupAcceptInviteResponse *response, NSError *error))handler;


#pragma mark GetGroupToken(RPCGroupGetGroupTokenRequest) returns (RPCGroupGetGroupTokenResponse)

- (void)getGroupTokenWithRequest:(RPCGroupGetGroupTokenRequest *)request handler:(void(^)(RPCGroupGetGroupTokenResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetGroupTokenWithRequest:(RPCGroupGetGroupTokenRequest *)request handler:(void(^)(RPCGroupGetGroupTokenResponse *response, NSError *error))handler;


#pragma mark GetAssociatedGroupUsers(StringValue) returns (RPCAssociatedGroupUsersResponse)

- (void)getAssociatedGroupUsersWithRequest:(GPBStringValue *)request handler:(void(^)(RPCAssociatedGroupUsersResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetAssociatedGroupUsersWithRequest:(GPBStringValue *)request handler:(void(^)(RPCAssociatedGroupUsersResponse *response, NSError *error))handler;


#pragma mark RemoveUserFromGroup(RPCGroupRemoveUserRequest) returns (RPCGroupRemoveUserResponse)

- (void)removeUserFromGroupWithRequest:(RPCGroupRemoveUserRequest *)request handler:(void(^)(RPCGroupRemoveUserResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToRemoveUserFromGroupWithRequest:(RPCGroupRemoveUserRequest *)request handler:(void(^)(RPCGroupRemoveUserResponse *response, NSError *error))handler;


#pragma mark AddMember(RPCGroupAddMemberRequest) returns (RPCGroupAddMemberResponse)

- (void)addMemberWithRequest:(RPCGroupAddMemberRequest *)request handler:(void(^)(RPCGroupAddMemberResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToAddMemberWithRequest:(RPCGroupAddMemberRequest *)request handler:(void(^)(RPCGroupAddMemberResponse *response, NSError *error))handler;


#pragma mark GetMembers(RPCGroupGetMembersRequest) returns (RPCGroupGetMembersResponse)

- (void)getMembersWithRequest:(RPCGroupGetMembersRequest *)request handler:(void(^)(RPCGroupGetMembersResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetMembersWithRequest:(RPCGroupGetMembersRequest *)request handler:(void(^)(RPCGroupGetMembersResponse *response, NSError *error))handler;


#pragma mark EditMember(RPCGroupEditMemberRequest) returns (RPCGroupEditMemberResponse)

- (void)editMemberWithRequest:(RPCGroupEditMemberRequest *)request handler:(void(^)(RPCGroupEditMemberResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToEditMemberWithRequest:(RPCGroupEditMemberRequest *)request handler:(void(^)(RPCGroupEditMemberResponse *response, NSError *error))handler;


#pragma mark SendInvite(RPCGroupSendInviteRequest) returns (RPCGroupSendInviteResponse)

- (void)sendInviteWithRequest:(RPCGroupSendInviteRequest *)request handler:(void(^)(RPCGroupSendInviteResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToSendInviteWithRequest:(RPCGroupSendInviteRequest *)request handler:(void(^)(RPCGroupSendInviteResponse *response, NSError *error))handler;


#pragma mark JoinGroup(RPCGroupJoinGroupRequest) returns (RPCGroupJoinGroupResponse)

- (void)joinGroupWithRequest:(RPCGroupJoinGroupRequest *)request handler:(void(^)(RPCGroupJoinGroupResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToJoinGroupWithRequest:(RPCGroupJoinGroupRequest *)request handler:(void(^)(RPCGroupJoinGroupResponse *response, NSError *error))handler;


#pragma mark LeaveGroup(RPCGroupLeaveGroupRequest) returns (RPCGroupLeaveGroupResponse)

- (void)leaveGroupWithRequest:(RPCGroupLeaveGroupRequest *)request handler:(void(^)(RPCGroupLeaveGroupResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToLeaveGroupWithRequest:(RPCGroupLeaveGroupRequest *)request handler:(void(^)(RPCGroupLeaveGroupResponse *response, NSError *error))handler;


@end

// Basic service implementation, over gRPC, that only does marshalling and parsing.
@interface GroupService : ProtoService<GroupService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
@protocol PrefsService <NSObject>

#pragma mark GetPref(RPCPrefsGetPrefRequest) returns (RPCPrefsGetPrefResponse)

- (void)getPrefWithRequest:(RPCPrefsGetPrefRequest *)request handler:(void(^)(RPCPrefsGetPrefResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetPrefWithRequest:(RPCPrefsGetPrefRequest *)request handler:(void(^)(RPCPrefsGetPrefResponse *response, NSError *error))handler;


#pragma mark GetPrefs(RPCPrefsGetPrefsRequest) returns (RPCPrefsGetPrefsResponse)

- (void)getPrefsWithRequest:(RPCPrefsGetPrefsRequest *)request handler:(void(^)(RPCPrefsGetPrefsResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetPrefsWithRequest:(RPCPrefsGetPrefsRequest *)request handler:(void(^)(RPCPrefsGetPrefsResponse *response, NSError *error))handler;


#pragma mark SetPrefs(RPCPrefsSetPrefsRequest) returns (RPCPrefsSetPrefsResponse)

- (void)setPrefsWithRequest:(RPCPrefsSetPrefsRequest *)request handler:(void(^)(RPCPrefsSetPrefsResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToSetPrefsWithRequest:(RPCPrefsSetPrefsRequest *)request handler:(void(^)(RPCPrefsSetPrefsResponse *response, NSError *error))handler;


#pragma mark DeletePrefs(RPCPrefsDeletePrefsRequest) returns (RPCPrefsDeletePrefsResponse)

- (void)deletePrefsWithRequest:(RPCPrefsDeletePrefsRequest *)request handler:(void(^)(RPCPrefsDeletePrefsResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToDeletePrefsWithRequest:(RPCPrefsDeletePrefsRequest *)request handler:(void(^)(RPCPrefsDeletePrefsResponse *response, NSError *error))handler;


@end

// Basic service implementation, over gRPC, that only does marshalling and parsing.
@interface PrefsService : ProtoService<PrefsService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
@protocol LegacySearchService <NSObject>

#pragma mark Search(RPCSearchSearchRequest) returns (RPCSearchSearchResponse)

- (void)searchWithRequest:(RPCSearchSearchRequest *)request handler:(void(^)(RPCSearchSearchResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToSearchWithRequest:(RPCSearchSearchRequest *)request handler:(void(^)(RPCSearchSearchResponse *response, NSError *error))handler;


@end

// Basic service implementation, over gRPC, that only does marshalling and parsing.
@interface LegacySearchService : ProtoService<LegacySearchService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
