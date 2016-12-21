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
#import "Contacts.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol UserService <NSObject>

#pragma mark Login(RPCAuthLoginRequest) returns (RPCAuthLoginResponse)

- (void)loginWithRequest:(RPCAuthLoginRequest *)request handler:(void(^)(RPCAuthLoginResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToLoginWithRequest:(RPCAuthLoginRequest *)request handler:(void(^)(RPCAuthLoginResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark LoginOAuth(RPCAuthLoginOAuthRequest) returns (RPCAuthLoginResponse)

- (void)loginOAuthWithRequest:(RPCAuthLoginOAuthRequest *)request handler:(void(^)(RPCAuthLoginResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToLoginOAuthWithRequest:(RPCAuthLoginOAuthRequest *)request handler:(void(^)(RPCAuthLoginResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark LoginEmail(RPCAuthLoginEmailRequest) returns (RPCAuthLoginResponse)

- (void)loginEmailWithRequest:(RPCAuthLoginEmailRequest *)request handler:(void(^)(RPCAuthLoginResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToLoginEmailWithRequest:(RPCAuthLoginEmailRequest *)request handler:(void(^)(RPCAuthLoginResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Register(RPCAuthRegisterRequest) returns (AuthRegisterResponse)

- (void)registerWithRequest:(RPCAuthRegisterRequest *)request handler:(void(^)(AuthRegisterResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRegisterWithRequest:(RPCAuthRegisterRequest *)request handler:(void(^)(AuthRegisterResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ConvertEphemeralUser(RPCUserConvertEphemeralUserRequest) returns (RPCUserConvertEphemeralUserResponse)

- (void)convertEphemeralUserWithRequest:(RPCUserConvertEphemeralUserRequest *)request handler:(void(^)(RPCUserConvertEphemeralUserResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToConvertEphemeralUserWithRequest:(RPCUserConvertEphemeralUserRequest *)request handler:(void(^)(RPCUserConvertEphemeralUserResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark TransferOwnership(RPCUserTransferOwnershipRequest) returns (RPCUserTransferOwnershipResponse)

- (void)transferOwnershipWithRequest:(RPCUserTransferOwnershipRequest *)request handler:(void(^)(RPCUserTransferOwnershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToTransferOwnershipWithRequest:(RPCUserTransferOwnershipRequest *)request handler:(void(^)(RPCUserTransferOwnershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CheckBanStatus(RPCUserCheckBanStatusRequest) returns (RPCUserCheckBanStatusResponse)

- (void)checkBanStatusWithRequest:(RPCUserCheckBanStatusRequest *)request handler:(void(^)(RPCUserCheckBanStatusResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCheckBanStatusWithRequest:(RPCUserCheckBanStatusRequest *)request handler:(void(^)(RPCUserCheckBanStatusResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetUser(RPCUserGetUserRequest) returns (RPCUserGetUserResponse)

- (void)getUserWithRequest:(RPCUserGetUserRequest *)request handler:(void(^)(RPCUserGetUserResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetUserWithRequest:(RPCUserGetUserRequest *)request handler:(void(^)(RPCUserGetUserResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteUser(RPCUserDeleteUserRequest) returns (RPCUserDeleteUserResponse)

- (void)deleteUserWithRequest:(RPCUserDeleteUserRequest *)request handler:(void(^)(RPCUserDeleteUserResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteUserWithRequest:(RPCUserDeleteUserRequest *)request handler:(void(^)(RPCUserDeleteUserResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RemoveUserFromHubs(RPCUserRemoveUserFromHubsRequest) returns (RPCUserRemoveUserFromHubsResponse)

- (void)removeUserFromHubsWithRequest:(RPCUserRemoveUserFromHubsRequest *)request handler:(void(^)(RPCUserRemoveUserFromHubsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRemoveUserFromHubsWithRequest:(RPCUserRemoveUserFromHubsRequest *)request handler:(void(^)(RPCUserRemoveUserFromHubsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ValidateUsername(RPCUserValidateUsernameRequest) returns (RPCUserValidateUsernameResponse)

- (void)validateUsernameWithRequest:(RPCUserValidateUsernameRequest *)request handler:(void(^)(RPCUserValidateUsernameResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToValidateUsernameWithRequest:(RPCUserValidateUsernameRequest *)request handler:(void(^)(RPCUserValidateUsernameResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ValidateEmailAddress(RPCUserValidateEmailAddressRequest) returns (RPCUserValidateEmailAddressResponse)

- (void)validateEmailAddressWithRequest:(RPCUserValidateEmailAddressRequest *)request handler:(void(^)(RPCUserValidateEmailAddressResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToValidateEmailAddressWithRequest:(RPCUserValidateEmailAddressRequest *)request handler:(void(^)(RPCUserValidateEmailAddressResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetUserAgent(RPCUserGetUserAgentRequest) returns (RPCUserGetUserAgentResponse)

- (void)getUserAgentWithRequest:(RPCUserGetUserAgentRequest *)request handler:(void(^)(RPCUserGetUserAgentResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetUserAgentWithRequest:(RPCUserGetUserAgentRequest *)request handler:(void(^)(RPCUserGetUserAgentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetOwnProfile(RPCUserGetOwnProfileRequest) returns (RPCUserGetOwnProfileResponse)

- (void)getOwnProfileWithRequest:(RPCUserGetOwnProfileRequest *)request handler:(void(^)(RPCUserGetOwnProfileResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetOwnProfileWithRequest:(RPCUserGetOwnProfileRequest *)request handler:(void(^)(RPCUserGetOwnProfileResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetOtherProfile(RPCUserGetOtherProfileRequest) returns (RPCUserGetOtherProfileResponse)

- (void)getOtherProfileWithRequest:(RPCUserGetOtherProfileRequest *)request handler:(void(^)(RPCUserGetOtherProfileResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetOtherProfileWithRequest:(RPCUserGetOtherProfileRequest *)request handler:(void(^)(RPCUserGetOtherProfileResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UpdateUser(RPCUserUpdateRequest) returns (RPCUserUpdateResponse)

- (void)updateUserWithRequest:(RPCUserUpdateRequest *)request handler:(void(^)(RPCUserUpdateResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdateUserWithRequest:(RPCUserUpdateRequest *)request handler:(void(^)(RPCUserUpdateResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RequestFriendship(RPCUserFriendshipRequest) returns (RPCUserFriendshipRequestResponse)

- (void)requestFriendshipWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCUserFriendshipRequestResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRequestFriendshipWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCUserFriendshipRequestResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Unfriend(RPCUserFriendshipRequest) returns (RPCGenericResponse)

- (void)unfriendWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCGenericResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUnfriendWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCGenericResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetFriends(RPCUserGetFriendsRequest) returns (RPCUserGetFriendsResponse)

- (void)getFriendsWithRequest:(RPCUserGetFriendsRequest *)request handler:(void(^)(RPCUserGetFriendsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetFriendsWithRequest:(RPCUserGetFriendsRequest *)request handler:(void(^)(RPCUserGetFriendsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RequestActivationEmail(RPCUserActivationEmailRequest) returns (RPCUserActivationEmailResponse)

- (void)requestActivationEmailWithRequest:(RPCUserActivationEmailRequest *)request handler:(void(^)(RPCUserActivationEmailResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRequestActivationEmailWithRequest:(RPCUserActivationEmailRequest *)request handler:(void(^)(RPCUserActivationEmailResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ExecuteActivation(RPCUserExecuteActivationRequest) returns (RPCUserExecuteActivationResponse)

- (void)executeActivationWithRequest:(RPCUserExecuteActivationRequest *)request handler:(void(^)(RPCUserExecuteActivationResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToExecuteActivationWithRequest:(RPCUserExecuteActivationRequest *)request handler:(void(^)(RPCUserExecuteActivationResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RequestPasswordReset(RPCUserPasswordResetEmailRequest) returns (RPCUserPasswordResetEmailResponse)

- (void)requestPasswordResetWithRequest:(RPCUserPasswordResetEmailRequest *)request handler:(void(^)(RPCUserPasswordResetEmailResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRequestPasswordResetWithRequest:(RPCUserPasswordResetEmailRequest *)request handler:(void(^)(RPCUserPasswordResetEmailResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetPasswordResetInfo(RPCUserGetPasswordResetInfoRequest) returns (RPCUserGetPasswordResetInfoResponse)

- (void)getPasswordResetInfoWithRequest:(RPCUserGetPasswordResetInfoRequest *)request handler:(void(^)(RPCUserGetPasswordResetInfoResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetPasswordResetInfoWithRequest:(RPCUserGetPasswordResetInfoRequest *)request handler:(void(^)(RPCUserGetPasswordResetInfoResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ExecutePasswordReset(RPCUserExecutePasswordResetRequest) returns (RPCUserExecutePasswordResetResponse)

- (void)executePasswordResetWithRequest:(RPCUserExecutePasswordResetRequest *)request handler:(void(^)(RPCUserExecutePasswordResetResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToExecutePasswordResetWithRequest:(RPCUserExecutePasswordResetRequest *)request handler:(void(^)(RPCUserExecutePasswordResetResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UpdatePassword(RPCUserUpdatePasswordRequest) returns (RPCUserUpdatePasswordResponse)

- (void)updatePasswordWithRequest:(RPCUserUpdatePasswordRequest *)request handler:(void(^)(RPCUserUpdatePasswordResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdatePasswordWithRequest:(RPCUserUpdatePasswordRequest *)request handler:(void(^)(RPCUserUpdatePasswordResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetUserProfile(RPCProfileGetRequest) returns (UserProfile)

- (void)getUserProfileWithRequest:(RPCProfileGetRequest *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetUserProfileWithRequest:(RPCProfileGetRequest *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UpdateGameEntry(UserGame) returns (UserProfile)

- (void)updateGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdateGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteGameEntry(UserGame) returns (UserProfile)

- (void)deleteGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UpdateUserAccount(UserAccount) returns (UserProfile)

- (void)updateUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdateUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteUserAccount(UserAccount) returns (UserProfile)

- (void)deleteUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SetChannelRole(RPCUserSetChannelRoleRequest) returns (RPCUserSetChannelRoleResponse)

- (void)setChannelRoleWithRequest:(RPCUserSetChannelRoleRequest *)request handler:(void(^)(RPCUserSetChannelRoleResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSetChannelRoleWithRequest:(RPCUserSetChannelRoleRequest *)request handler:(void(^)(RPCUserSetChannelRoleResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SetGroupRole(RPCUserSetGroupRoleRequest) returns (RPCUserSetGroupRoleResponse)

- (void)setGroupRoleWithRequest:(RPCUserSetGroupRoleRequest *)request handler:(void(^)(RPCUserSetGroupRoleResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSetGroupRoleWithRequest:(RPCUserSetGroupRoleRequest *)request handler:(void(^)(RPCUserSetGroupRoleResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CreateProprietaryGroupMembership(RPCCreateRelationRequest) returns (RPCCreateRelationResponse)

- (void)createProprietaryGroupMembershipWithRequest:(RPCCreateRelationRequest *)request handler:(void(^)(RPCCreateRelationResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCreateProprietaryGroupMembershipWithRequest:(RPCCreateRelationRequest *)request handler:(void(^)(RPCCreateRelationResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UpdateVoiceStatus(RPCUserUpdateVoiceStatusRequest) returns (RPCUserUpdateVoiceStatusResponse)

- (void)updateVoiceStatusWithRequest:(RPCUserUpdateVoiceStatusRequest *)request handler:(void(^)(RPCUserUpdateVoiceStatusResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdateVoiceStatusWithRequest:(RPCUserUpdateVoiceStatusRequest *)request handler:(void(^)(RPCUserUpdateVoiceStatusResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AddContact(RPCUserAddContactRequest) returns (RPCUserAddContactResponse)

- (void)addContactWithRequest:(RPCUserAddContactRequest *)request handler:(void(^)(RPCUserAddContactResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddContactWithRequest:(RPCUserAddContactRequest *)request handler:(void(^)(RPCUserAddContactResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RemoveContact(RPCUserRemoveContactRequest) returns (RPCUserRemoveContactResponse)

- (void)removeContactWithRequest:(RPCUserRemoveContactRequest *)request handler:(void(^)(RPCUserRemoveContactResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRemoveContactWithRequest:(RPCUserRemoveContactRequest *)request handler:(void(^)(RPCUserRemoveContactResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetContacts(RPCUserGetContactsRequest) returns (RPCUserGetContactsResponse)

- (void)getContactsWithRequest:(RPCUserGetContactsRequest *)request handler:(void(^)(RPCUserGetContactsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetContactsWithRequest:(RPCUserGetContactsRequest *)request handler:(void(^)(RPCUserGetContactsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AddMutualContacts(RPCUserAddMutualContactsRequest) returns (RPCUserAddMutualContactsResponse)

- (void)addMutualContactsWithRequest:(RPCUserAddMutualContactsRequest *)request handler:(void(^)(RPCUserAddMutualContactsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddMutualContactsWithRequest:(RPCUserAddMutualContactsRequest *)request handler:(void(^)(RPCUserAddMutualContactsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark EditBlockedUser(RPCUserEditBlockedUserRequest) returns (RPCUserEditBlockedUserResponse)

- (void)editBlockedUserWithRequest:(RPCUserEditBlockedUserRequest *)request handler:(void(^)(RPCUserEditBlockedUserResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToEditBlockedUserWithRequest:(RPCUserEditBlockedUserRequest *)request handler:(void(^)(RPCUserEditBlockedUserResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetBlockedUsers(RPCUserGetBlockedUsersRequest) returns (RPCUserGetBlockedUsersResponse)

- (void)getBlockedUsersWithRequest:(RPCUserGetBlockedUsersRequest *)request handler:(void(^)(RPCUserGetBlockedUsersResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetBlockedUsersWithRequest:(RPCUserGetBlockedUsersRequest *)request handler:(void(^)(RPCUserGetBlockedUsersResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface UserService : GRPCProtoService<UserService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
@protocol GroupService <NSObject>

#pragma mark CreateGroup(RPCGroupCreateGroupRequest) returns (RPCGroupCreateGroupResponse)

- (void)createGroupWithRequest:(RPCGroupCreateGroupRequest *)request handler:(void(^)(RPCGroupCreateGroupResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCreateGroupWithRequest:(RPCGroupCreateGroupRequest *)request handler:(void(^)(RPCGroupCreateGroupResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark EditGroup(RPCGroupEditGroupRequest) returns (RPCGroupEditGroupResponse)

- (void)editGroupWithRequest:(RPCGroupEditGroupRequest *)request handler:(void(^)(RPCGroupEditGroupResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToEditGroupWithRequest:(RPCGroupEditGroupRequest *)request handler:(void(^)(RPCGroupEditGroupResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetGroup(RPCGroupGetGroupRequest) returns (RPCGroupGetGroupResponse)

- (void)getGroupWithRequest:(RPCGroupGetGroupRequest *)request handler:(void(^)(RPCGroupGetGroupResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetGroupWithRequest:(RPCGroupGetGroupRequest *)request handler:(void(^)(RPCGroupGetGroupResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetGroups(RPCGroupGetGroupsRequest) returns (RPCGroupGetGroupsResponse)

- (void)getGroupsWithRequest:(RPCGroupGetGroupsRequest *)request handler:(void(^)(RPCGroupGetGroupsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetGroupsWithRequest:(RPCGroupGetGroupsRequest *)request handler:(void(^)(RPCGroupGetGroupsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetGroupsForUser(RPCGroupGetGroupsForUserRequest) returns (RPCGroupGetGroupsForUserResponse)

- (void)getGroupsForUserWithRequest:(RPCGroupGetGroupsForUserRequest *)request handler:(void(^)(RPCGroupGetGroupsForUserResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetGroupsForUserWithRequest:(RPCGroupGetGroupsForUserRequest *)request handler:(void(^)(RPCGroupGetGroupsForUserResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AddGroupMember(RPCGroupAddGroupMemberRequest) returns (RPCGroupAddGroupMemberResponse)

- (void)addGroupMemberWithRequest:(RPCGroupAddGroupMemberRequest *)request handler:(void(^)(RPCGroupAddGroupMemberResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddGroupMemberWithRequest:(RPCGroupAddGroupMemberRequest *)request handler:(void(^)(RPCGroupAddGroupMemberResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AddGroupMembers(RPCGroupAddGroupMembersRequest) returns (RPCGroupAddGroupMembersResponse)

- (void)addGroupMembersWithRequest:(RPCGroupAddGroupMembersRequest *)request handler:(void(^)(RPCGroupAddGroupMembersResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddGroupMembersWithRequest:(RPCGroupAddGroupMembersRequest *)request handler:(void(^)(RPCGroupAddGroupMembersResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RemoveGroupMember(RPCGroupRemoveGroupMemberRequest) returns (RPCGroupRemoveGroupMemberResponse)

- (void)removeGroupMemberWithRequest:(RPCGroupRemoveGroupMemberRequest *)request handler:(void(^)(RPCGroupRemoveGroupMemberResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRemoveGroupMemberWithRequest:(RPCGroupRemoveGroupMemberRequest *)request handler:(void(^)(RPCGroupRemoveGroupMemberResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CheckGroupMembership(RPCGroupCheckGroupMembershipRequest) returns (RPCGroupCheckGroupMembershipResponse)

- (void)checkGroupMembershipWithRequest:(RPCGroupCheckGroupMembershipRequest *)request handler:(void(^)(RPCGroupCheckGroupMembershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCheckGroupMembershipWithRequest:(RPCGroupCheckGroupMembershipRequest *)request handler:(void(^)(RPCGroupCheckGroupMembershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CreateInviteCode(RPCGroupCreateInviteCodeRequest) returns (RPCGroupCreateInviteCodeResponse)

- (void)createInviteCodeWithRequest:(RPCGroupCreateInviteCodeRequest *)request handler:(void(^)(RPCGroupCreateInviteCodeResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCreateInviteCodeWithRequest:(RPCGroupCreateInviteCodeRequest *)request handler:(void(^)(RPCGroupCreateInviteCodeResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetInviteCodeInfo(RPCGroupGetInviteCodeInfoRequest) returns (RPCGroupGetInviteCodeInfoResponse)

- (void)getInviteCodeInfoWithRequest:(RPCGroupGetInviteCodeInfoRequest *)request handler:(void(^)(RPCGroupGetInviteCodeInfoResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetInviteCodeInfoWithRequest:(RPCGroupGetInviteCodeInfoRequest *)request handler:(void(^)(RPCGroupGetInviteCodeInfoResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AcceptInvite(RPCGroupAcceptInviteRequest) returns (RPCGroupAcceptInviteResponse)

- (void)acceptInviteWithRequest:(RPCGroupAcceptInviteRequest *)request handler:(void(^)(RPCGroupAcceptInviteResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAcceptInviteWithRequest:(RPCGroupAcceptInviteRequest *)request handler:(void(^)(RPCGroupAcceptInviteResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetGroupToken(RPCGroupGetGroupTokenRequest) returns (RPCGroupGetGroupTokenResponse)

- (void)getGroupTokenWithRequest:(RPCGroupGetGroupTokenRequest *)request handler:(void(^)(RPCGroupGetGroupTokenResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetGroupTokenWithRequest:(RPCGroupGetGroupTokenRequest *)request handler:(void(^)(RPCGroupGetGroupTokenResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetAssociatedGroupUsers(StringValue) returns (RPCAssociatedGroupUsersResponse)

/**
 * Load all users that are associated to a group
 * 1. All owners or members of that Group
 * 2. All users that currently subscribing atleast one group channel
 */
- (void)getAssociatedGroupUsersWithRequest:(GPBStringValue *)request handler:(void(^)(RPCAssociatedGroupUsersResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Load all users that are associated to a group
 * 1. All owners or members of that Group
 * 2. All users that currently subscribing atleast one group channel
 */
- (GRPCProtoCall *)RPCToGetAssociatedGroupUsersWithRequest:(GPBStringValue *)request handler:(void(^)(RPCAssociatedGroupUsersResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RemoveUserFromGroup(RPCGroupRemoveUserRequest) returns (RPCGroupRemoveUserResponse)

- (void)removeUserFromGroupWithRequest:(RPCGroupRemoveUserRequest *)request handler:(void(^)(RPCGroupRemoveUserResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRemoveUserFromGroupWithRequest:(RPCGroupRemoveUserRequest *)request handler:(void(^)(RPCGroupRemoveUserResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AddMember(RPCGroupAddMemberRequest) returns (RPCGroupAddMemberResponse)

- (void)addMemberWithRequest:(RPCGroupAddMemberRequest *)request handler:(void(^)(RPCGroupAddMemberResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddMemberWithRequest:(RPCGroupAddMemberRequest *)request handler:(void(^)(RPCGroupAddMemberResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetMembers(RPCGroupGetMembersRequest) returns (RPCGroupGetMembersResponse)

- (void)getMembersWithRequest:(RPCGroupGetMembersRequest *)request handler:(void(^)(RPCGroupGetMembersResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetMembersWithRequest:(RPCGroupGetMembersRequest *)request handler:(void(^)(RPCGroupGetMembersResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark EditMember(RPCGroupEditMemberRequest) returns (RPCGroupEditMemberResponse)

- (void)editMemberWithRequest:(RPCGroupEditMemberRequest *)request handler:(void(^)(RPCGroupEditMemberResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToEditMemberWithRequest:(RPCGroupEditMemberRequest *)request handler:(void(^)(RPCGroupEditMemberResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SendInvite(RPCGroupSendInviteRequest) returns (RPCGroupSendInviteResponse)

- (void)sendInviteWithRequest:(RPCGroupSendInviteRequest *)request handler:(void(^)(RPCGroupSendInviteResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSendInviteWithRequest:(RPCGroupSendInviteRequest *)request handler:(void(^)(RPCGroupSendInviteResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark JoinGroup(RPCGroupJoinGroupRequest) returns (RPCGroupJoinGroupResponse)

- (void)joinGroupWithRequest:(RPCGroupJoinGroupRequest *)request handler:(void(^)(RPCGroupJoinGroupResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToJoinGroupWithRequest:(RPCGroupJoinGroupRequest *)request handler:(void(^)(RPCGroupJoinGroupResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark LeaveGroup(RPCGroupLeaveGroupRequest) returns (RPCGroupLeaveGroupResponse)

- (void)leaveGroupWithRequest:(RPCGroupLeaveGroupRequest *)request handler:(void(^)(RPCGroupLeaveGroupResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToLeaveGroupWithRequest:(RPCGroupLeaveGroupRequest *)request handler:(void(^)(RPCGroupLeaveGroupResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GroupService : GRPCProtoService<GroupService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
@protocol PrefsService <NSObject>

#pragma mark GetPref(RPCPrefsGetPrefRequest) returns (RPCPrefsGetPrefResponse)

- (void)getPrefWithRequest:(RPCPrefsGetPrefRequest *)request handler:(void(^)(RPCPrefsGetPrefResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetPrefWithRequest:(RPCPrefsGetPrefRequest *)request handler:(void(^)(RPCPrefsGetPrefResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetPrefs(RPCPrefsGetPrefsRequest) returns (RPCPrefsGetPrefsResponse)

- (void)getPrefsWithRequest:(RPCPrefsGetPrefsRequest *)request handler:(void(^)(RPCPrefsGetPrefsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetPrefsWithRequest:(RPCPrefsGetPrefsRequest *)request handler:(void(^)(RPCPrefsGetPrefsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SetPrefs(RPCPrefsSetPrefsRequest) returns (RPCPrefsSetPrefsResponse)

- (void)setPrefsWithRequest:(RPCPrefsSetPrefsRequest *)request handler:(void(^)(RPCPrefsSetPrefsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSetPrefsWithRequest:(RPCPrefsSetPrefsRequest *)request handler:(void(^)(RPCPrefsSetPrefsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeletePrefs(RPCPrefsDeletePrefsRequest) returns (RPCPrefsDeletePrefsResponse)

- (void)deletePrefsWithRequest:(RPCPrefsDeletePrefsRequest *)request handler:(void(^)(RPCPrefsDeletePrefsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeletePrefsWithRequest:(RPCPrefsDeletePrefsRequest *)request handler:(void(^)(RPCPrefsDeletePrefsResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface PrefsService : GRPCProtoService<PrefsService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
@protocol LegacySearchService <NSObject>

#pragma mark Search(RPCSearchSearchRequest) returns (RPCSearchSearchResponse)

- (void)searchWithRequest:(RPCSearchSearchRequest *)request handler:(void(^)(RPCSearchSearchResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSearchWithRequest:(RPCSearchSearchRequest *)request handler:(void(^)(RPCSearchSearchResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface LegacySearchService : GRPCProtoService<LegacySearchService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
