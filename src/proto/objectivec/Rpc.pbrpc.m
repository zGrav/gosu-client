#import "Rpc.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

static NSString *const kPackageName = @"proto";
static NSString *const kServiceName = @"UserService";

@implementation UserService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:kPackageName serviceName:kServiceName]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark Login(RPCAuthLoginRequest) returns (AuthLoginResponse)

- (void)loginWithRequest:(RPCAuthLoginRequest *)request handler:(void(^)(AuthLoginResponse *response, NSError *error))handler{
  [[self RPCToLoginWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToLoginWithRequest:(RPCAuthLoginRequest *)request handler:(void(^)(AuthLoginResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"Login"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[AuthLoginResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Register(RPCAuthRegisterRequest) returns (AuthRegisterResponse)

- (void)registerWithRequest:(RPCAuthRegisterRequest *)request handler:(void(^)(AuthRegisterResponse *response, NSError *error))handler{
  [[self RPCToRegisterWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToRegisterWithRequest:(RPCAuthRegisterRequest *)request handler:(void(^)(AuthRegisterResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"Register"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[AuthRegisterResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ConvertEphemeralUser(RPCUserConvertEphemeralUserRequest) returns (RPCUserConvertEphemeralUserResponse)

- (void)convertEphemeralUserWithRequest:(RPCUserConvertEphemeralUserRequest *)request handler:(void(^)(RPCUserConvertEphemeralUserResponse *response, NSError *error))handler{
  [[self RPCToConvertEphemeralUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToConvertEphemeralUserWithRequest:(RPCUserConvertEphemeralUserRequest *)request handler:(void(^)(RPCUserConvertEphemeralUserResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"ConvertEphemeralUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserConvertEphemeralUserResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetUser(RPCUserGetUserRequest) returns (RPCUserGetUserResponse)

- (void)getUserWithRequest:(RPCUserGetUserRequest *)request handler:(void(^)(RPCUserGetUserResponse *response, NSError *error))handler{
  [[self RPCToGetUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetUserWithRequest:(RPCUserGetUserRequest *)request handler:(void(^)(RPCUserGetUserResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserGetUserResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteUser(RPCUserDeleteUserRequest) returns (RPCUserDeleteUserResponse)

- (void)deleteUserWithRequest:(RPCUserDeleteUserRequest *)request handler:(void(^)(RPCUserDeleteUserResponse *response, NSError *error))handler{
  [[self RPCToDeleteUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToDeleteUserWithRequest:(RPCUserDeleteUserRequest *)request handler:(void(^)(RPCUserDeleteUserResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"DeleteUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserDeleteUserResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RemoveUserFromHubs(RPCUserRemoveUserFromHubsRequest) returns (RPCUserRemoveUserFromHubsResponse)

- (void)removeUserFromHubsWithRequest:(RPCUserRemoveUserFromHubsRequest *)request handler:(void(^)(RPCUserRemoveUserFromHubsResponse *response, NSError *error))handler{
  [[self RPCToRemoveUserFromHubsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToRemoveUserFromHubsWithRequest:(RPCUserRemoveUserFromHubsRequest *)request handler:(void(^)(RPCUserRemoveUserFromHubsResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"RemoveUserFromHubs"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserRemoveUserFromHubsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ValidateUsername(RPCUserValidateUsernameRequest) returns (RPCUserValidateUsernameResponse)

- (void)validateUsernameWithRequest:(RPCUserValidateUsernameRequest *)request handler:(void(^)(RPCUserValidateUsernameResponse *response, NSError *error))handler{
  [[self RPCToValidateUsernameWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToValidateUsernameWithRequest:(RPCUserValidateUsernameRequest *)request handler:(void(^)(RPCUserValidateUsernameResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"ValidateUsername"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserValidateUsernameResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetUserAgent(RPCUserGetUserAgentRequest) returns (RPCUserGetUserAgentResponse)

- (void)getUserAgentWithRequest:(RPCUserGetUserAgentRequest *)request handler:(void(^)(RPCUserGetUserAgentResponse *response, NSError *error))handler{
  [[self RPCToGetUserAgentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetUserAgentWithRequest:(RPCUserGetUserAgentRequest *)request handler:(void(^)(RPCUserGetUserAgentResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetUserAgent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserGetUserAgentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetOwnProfile(RPCUserGetOwnProfileRequest) returns (RPCUserGetOwnProfileResponse)

- (void)getOwnProfileWithRequest:(RPCUserGetOwnProfileRequest *)request handler:(void(^)(RPCUserGetOwnProfileResponse *response, NSError *error))handler{
  [[self RPCToGetOwnProfileWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetOwnProfileWithRequest:(RPCUserGetOwnProfileRequest *)request handler:(void(^)(RPCUserGetOwnProfileResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetOwnProfile"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserGetOwnProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetOtherProfile(RPCUserGetOtherProfileRequest) returns (RPCUserGetOtherProfileResponse)

- (void)getOtherProfileWithRequest:(RPCUserGetOtherProfileRequest *)request handler:(void(^)(RPCUserGetOtherProfileResponse *response, NSError *error))handler{
  [[self RPCToGetOtherProfileWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetOtherProfileWithRequest:(RPCUserGetOtherProfileRequest *)request handler:(void(^)(RPCUserGetOtherProfileResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetOtherProfile"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserGetOtherProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UpdateUser(RPCUserUpdateRequest) returns (RPCUserUpdateResponse)

- (void)updateUserWithRequest:(RPCUserUpdateRequest *)request handler:(void(^)(RPCUserUpdateResponse *response, NSError *error))handler{
  [[self RPCToUpdateUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToUpdateUserWithRequest:(RPCUserUpdateRequest *)request handler:(void(^)(RPCUserUpdateResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"UpdateUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserUpdateResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RequestFriendship(RPCUserFriendshipRequest) returns (RPCUserFriendshipRequestResponse)

- (void)requestFriendshipWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCUserFriendshipRequestResponse *response, NSError *error))handler{
  [[self RPCToRequestFriendshipWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToRequestFriendshipWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCUserFriendshipRequestResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"RequestFriendship"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserFriendshipRequestResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Unfriend(RPCUserFriendshipRequest) returns (RPCGenericResponse)

- (void)unfriendWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCGenericResponse *response, NSError *error))handler{
  [[self RPCToUnfriendWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToUnfriendWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCGenericResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"Unfriend"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGenericResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetFriends(RPCUserGetFriendsRequest) returns (RPCUserGetFriendsResponse)

- (void)getFriendsWithRequest:(RPCUserGetFriendsRequest *)request handler:(void(^)(RPCUserGetFriendsResponse *response, NSError *error))handler{
  [[self RPCToGetFriendsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetFriendsWithRequest:(RPCUserGetFriendsRequest *)request handler:(void(^)(RPCUserGetFriendsResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetFriends"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserGetFriendsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RequestActivationEmail(RPCUserActivationEmailRequest) returns (RPCUserActivationEmailResponse)

- (void)requestActivationEmailWithRequest:(RPCUserActivationEmailRequest *)request handler:(void(^)(RPCUserActivationEmailResponse *response, NSError *error))handler{
  [[self RPCToRequestActivationEmailWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToRequestActivationEmailWithRequest:(RPCUserActivationEmailRequest *)request handler:(void(^)(RPCUserActivationEmailResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"RequestActivationEmail"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserActivationEmailResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ExecuteActivation(RPCUserExecuteActivationRequest) returns (RPCUserExecuteActivationResponse)

- (void)executeActivationWithRequest:(RPCUserExecuteActivationRequest *)request handler:(void(^)(RPCUserExecuteActivationResponse *response, NSError *error))handler{
  [[self RPCToExecuteActivationWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToExecuteActivationWithRequest:(RPCUserExecuteActivationRequest *)request handler:(void(^)(RPCUserExecuteActivationResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"ExecuteActivation"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserExecuteActivationResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RequestPasswordReset(RPCUserPasswordResetEmailRequest) returns (RPCUserPasswordResetEmailResponse)

- (void)requestPasswordResetWithRequest:(RPCUserPasswordResetEmailRequest *)request handler:(void(^)(RPCUserPasswordResetEmailResponse *response, NSError *error))handler{
  [[self RPCToRequestPasswordResetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToRequestPasswordResetWithRequest:(RPCUserPasswordResetEmailRequest *)request handler:(void(^)(RPCUserPasswordResetEmailResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"RequestPasswordReset"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserPasswordResetEmailResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ExecutePasswordReset(RPCUserExecutePasswordResetRequest) returns (RPCUserExecutePasswordResetResponse)

- (void)executePasswordResetWithRequest:(RPCUserExecutePasswordResetRequest *)request handler:(void(^)(RPCUserExecutePasswordResetResponse *response, NSError *error))handler{
  [[self RPCToExecutePasswordResetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToExecutePasswordResetWithRequest:(RPCUserExecutePasswordResetRequest *)request handler:(void(^)(RPCUserExecutePasswordResetResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"ExecutePasswordReset"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserExecutePasswordResetResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UpdatePassword(RPCUserUpdatePasswordRequest) returns (RPCUserUpdatePasswordResponse)

- (void)updatePasswordWithRequest:(RPCUserUpdatePasswordRequest *)request handler:(void(^)(RPCUserUpdatePasswordResponse *response, NSError *error))handler{
  [[self RPCToUpdatePasswordWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToUpdatePasswordWithRequest:(RPCUserUpdatePasswordRequest *)request handler:(void(^)(RPCUserUpdatePasswordResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"UpdatePassword"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserUpdatePasswordResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetUserProfile(RPCProfileGetRequest) returns (UserProfile)

- (void)getUserProfileWithRequest:(RPCProfileGetRequest *)request handler:(void(^)(UserProfile *response, NSError *error))handler{
  [[self RPCToGetUserProfileWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetUserProfileWithRequest:(RPCProfileGetRequest *)request handler:(void(^)(UserProfile *response, NSError *error))handler{
  return [self RPCToMethod:@"GetUserProfile"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[UserProfile class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UpdateGameEntry(UserGame) returns (UserProfile)

- (void)updateGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *response, NSError *error))handler{
  [[self RPCToUpdateGameEntryWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToUpdateGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *response, NSError *error))handler{
  return [self RPCToMethod:@"UpdateGameEntry"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[UserProfile class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteGameEntry(UserGame) returns (UserProfile)

- (void)deleteGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *response, NSError *error))handler{
  [[self RPCToDeleteGameEntryWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToDeleteGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *response, NSError *error))handler{
  return [self RPCToMethod:@"DeleteGameEntry"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[UserProfile class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UpdateUserAccount(UserAccount) returns (UserProfile)

- (void)updateUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *response, NSError *error))handler{
  [[self RPCToUpdateUserAccountWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToUpdateUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *response, NSError *error))handler{
  return [self RPCToMethod:@"UpdateUserAccount"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[UserProfile class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteUserAccount(UserAccount) returns (UserProfile)

- (void)deleteUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *response, NSError *error))handler{
  [[self RPCToDeleteUserAccountWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToDeleteUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *response, NSError *error))handler{
  return [self RPCToMethod:@"DeleteUserAccount"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[UserProfile class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SetChannelRole(RPCUserSetChannelRoleRequest) returns (RPCUserSetChannelRoleResponse)

- (void)setChannelRoleWithRequest:(RPCUserSetChannelRoleRequest *)request handler:(void(^)(RPCUserSetChannelRoleResponse *response, NSError *error))handler{
  [[self RPCToSetChannelRoleWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToSetChannelRoleWithRequest:(RPCUserSetChannelRoleRequest *)request handler:(void(^)(RPCUserSetChannelRoleResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"SetChannelRole"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserSetChannelRoleResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SetGroupRole(RPCUserSetGroupRoleRequest) returns (RPCUserSetGroupRoleResponse)

- (void)setGroupRoleWithRequest:(RPCUserSetGroupRoleRequest *)request handler:(void(^)(RPCUserSetGroupRoleResponse *response, NSError *error))handler{
  [[self RPCToSetGroupRoleWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToSetGroupRoleWithRequest:(RPCUserSetGroupRoleRequest *)request handler:(void(^)(RPCUserSetGroupRoleResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"SetGroupRole"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserSetGroupRoleResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CreateProprietaryGroupMembership(RPCCreateRelationRequest) returns (RPCCreateRelationResponse)

- (void)createProprietaryGroupMembershipWithRequest:(RPCCreateRelationRequest *)request handler:(void(^)(RPCCreateRelationResponse *response, NSError *error))handler{
  [[self RPCToCreateProprietaryGroupMembershipWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToCreateProprietaryGroupMembershipWithRequest:(RPCCreateRelationRequest *)request handler:(void(^)(RPCCreateRelationResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"CreateProprietaryGroupMembership"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCCreateRelationResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UpdateVoiceStatus(RPCUserUpdateVoiceStatusRequest) returns (RPCUserUpdateVoiceStatusResponse)

- (void)updateVoiceStatusWithRequest:(RPCUserUpdateVoiceStatusRequest *)request handler:(void(^)(RPCUserUpdateVoiceStatusResponse *response, NSError *error))handler{
  [[self RPCToUpdateVoiceStatusWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToUpdateVoiceStatusWithRequest:(RPCUserUpdateVoiceStatusRequest *)request handler:(void(^)(RPCUserUpdateVoiceStatusResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"UpdateVoiceStatus"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserUpdateVoiceStatusResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
static NSString *const kPackageName = @"proto";
static NSString *const kServiceName = @"GroupService";

@implementation GroupService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:kPackageName serviceName:kServiceName]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark CreateGroup(RPCGroupCreateGroupRequest) returns (RPCGroupCreateGroupResponse)

- (void)createGroupWithRequest:(RPCGroupCreateGroupRequest *)request handler:(void(^)(RPCGroupCreateGroupResponse *response, NSError *error))handler{
  [[self RPCToCreateGroupWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToCreateGroupWithRequest:(RPCGroupCreateGroupRequest *)request handler:(void(^)(RPCGroupCreateGroupResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"CreateGroup"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupCreateGroupResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark EditGroup(RPCGroupEditGroupRequest) returns (RPCGroupEditGroupResponse)

- (void)editGroupWithRequest:(RPCGroupEditGroupRequest *)request handler:(void(^)(RPCGroupEditGroupResponse *response, NSError *error))handler{
  [[self RPCToEditGroupWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToEditGroupWithRequest:(RPCGroupEditGroupRequest *)request handler:(void(^)(RPCGroupEditGroupResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"EditGroup"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupEditGroupResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetGroup(RPCGroupGetGroupRequest) returns (RPCGroupGetGroupResponse)

- (void)getGroupWithRequest:(RPCGroupGetGroupRequest *)request handler:(void(^)(RPCGroupGetGroupResponse *response, NSError *error))handler{
  [[self RPCToGetGroupWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetGroupWithRequest:(RPCGroupGetGroupRequest *)request handler:(void(^)(RPCGroupGetGroupResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetGroup"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupGetGroupResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetGroups(RPCGroupGetGroupsRequest) returns (RPCGroupGetGroupsResponse)

- (void)getGroupsWithRequest:(RPCGroupGetGroupsRequest *)request handler:(void(^)(RPCGroupGetGroupsResponse *response, NSError *error))handler{
  [[self RPCToGetGroupsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetGroupsWithRequest:(RPCGroupGetGroupsRequest *)request handler:(void(^)(RPCGroupGetGroupsResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetGroups"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupGetGroupsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetGroupsForUser(RPCGroupGetGroupsForUserRequest) returns (RPCGroupGetGroupsForUserResponse)

- (void)getGroupsForUserWithRequest:(RPCGroupGetGroupsForUserRequest *)request handler:(void(^)(RPCGroupGetGroupsForUserResponse *response, NSError *error))handler{
  [[self RPCToGetGroupsForUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetGroupsForUserWithRequest:(RPCGroupGetGroupsForUserRequest *)request handler:(void(^)(RPCGroupGetGroupsForUserResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetGroupsForUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupGetGroupsForUserResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddGroupMember(RPCGroupAddGroupMemberRequest) returns (RPCGroupAddGroupMemberResponse)

- (void)addGroupMemberWithRequest:(RPCGroupAddGroupMemberRequest *)request handler:(void(^)(RPCGroupAddGroupMemberResponse *response, NSError *error))handler{
  [[self RPCToAddGroupMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToAddGroupMemberWithRequest:(RPCGroupAddGroupMemberRequest *)request handler:(void(^)(RPCGroupAddGroupMemberResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"AddGroupMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupAddGroupMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddGroupMembers(RPCGroupAddGroupMembersRequest) returns (RPCGroupAddGroupMembersResponse)

- (void)addGroupMembersWithRequest:(RPCGroupAddGroupMembersRequest *)request handler:(void(^)(RPCGroupAddGroupMembersResponse *response, NSError *error))handler{
  [[self RPCToAddGroupMembersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToAddGroupMembersWithRequest:(RPCGroupAddGroupMembersRequest *)request handler:(void(^)(RPCGroupAddGroupMembersResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"AddGroupMembers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupAddGroupMembersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RemoveGroupMember(RPCGroupRemoveGroupMemberRequest) returns (RPCGroupRemoveGroupMemberResponse)

- (void)removeGroupMemberWithRequest:(RPCGroupRemoveGroupMemberRequest *)request handler:(void(^)(RPCGroupRemoveGroupMemberResponse *response, NSError *error))handler{
  [[self RPCToRemoveGroupMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToRemoveGroupMemberWithRequest:(RPCGroupRemoveGroupMemberRequest *)request handler:(void(^)(RPCGroupRemoveGroupMemberResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"RemoveGroupMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupRemoveGroupMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CheckGroupMembership(RPCGroupCheckGroupMembershipRequest) returns (RPCGroupCheckGroupMembershipResponse)

- (void)checkGroupMembershipWithRequest:(RPCGroupCheckGroupMembershipRequest *)request handler:(void(^)(RPCGroupCheckGroupMembershipResponse *response, NSError *error))handler{
  [[self RPCToCheckGroupMembershipWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToCheckGroupMembershipWithRequest:(RPCGroupCheckGroupMembershipRequest *)request handler:(void(^)(RPCGroupCheckGroupMembershipResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"CheckGroupMembership"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupCheckGroupMembershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CreateInviteCode(RPCGroupCreateInviteCodeRequest) returns (RPCGroupCreateInviteCodeResponse)

- (void)createInviteCodeWithRequest:(RPCGroupCreateInviteCodeRequest *)request handler:(void(^)(RPCGroupCreateInviteCodeResponse *response, NSError *error))handler{
  [[self RPCToCreateInviteCodeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToCreateInviteCodeWithRequest:(RPCGroupCreateInviteCodeRequest *)request handler:(void(^)(RPCGroupCreateInviteCodeResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"CreateInviteCode"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupCreateInviteCodeResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetInviteCodeInfo(RPCGroupGetInviteCodeInfoRequest) returns (RPCGroupGetInviteCodeInfoResponse)

- (void)getInviteCodeInfoWithRequest:(RPCGroupGetInviteCodeInfoRequest *)request handler:(void(^)(RPCGroupGetInviteCodeInfoResponse *response, NSError *error))handler{
  [[self RPCToGetInviteCodeInfoWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetInviteCodeInfoWithRequest:(RPCGroupGetInviteCodeInfoRequest *)request handler:(void(^)(RPCGroupGetInviteCodeInfoResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetInviteCodeInfo"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupGetInviteCodeInfoResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AcceptInvite(RPCGroupAcceptInviteRequest) returns (RPCGroupAcceptInviteResponse)

- (void)acceptInviteWithRequest:(RPCGroupAcceptInviteRequest *)request handler:(void(^)(RPCGroupAcceptInviteResponse *response, NSError *error))handler{
  [[self RPCToAcceptInviteWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToAcceptInviteWithRequest:(RPCGroupAcceptInviteRequest *)request handler:(void(^)(RPCGroupAcceptInviteResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"AcceptInvite"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupAcceptInviteResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetGroupToken(RPCGroupGetGroupTokenRequest) returns (RPCGroupGetGroupTokenResponse)

- (void)getGroupTokenWithRequest:(RPCGroupGetGroupTokenRequest *)request handler:(void(^)(RPCGroupGetGroupTokenResponse *response, NSError *error))handler{
  [[self RPCToGetGroupTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetGroupTokenWithRequest:(RPCGroupGetGroupTokenRequest *)request handler:(void(^)(RPCGroupGetGroupTokenResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetGroupToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupGetGroupTokenResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetAssociatedGroupUsers(StringValue) returns (RPCAssociatedGroupUsersResponse)

- (void)getAssociatedGroupUsersWithRequest:(GPBStringValue *)request handler:(void(^)(RPCAssociatedGroupUsersResponse *response, NSError *error))handler{
  [[self RPCToGetAssociatedGroupUsersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetAssociatedGroupUsersWithRequest:(GPBStringValue *)request handler:(void(^)(RPCAssociatedGroupUsersResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetAssociatedGroupUsers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCAssociatedGroupUsersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RemoveUserFromGroup(RPCGroupRemoveUserRequest) returns (RPCGroupRemoveUserResponse)

- (void)removeUserFromGroupWithRequest:(RPCGroupRemoveUserRequest *)request handler:(void(^)(RPCGroupRemoveUserResponse *response, NSError *error))handler{
  [[self RPCToRemoveUserFromGroupWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToRemoveUserFromGroupWithRequest:(RPCGroupRemoveUserRequest *)request handler:(void(^)(RPCGroupRemoveUserResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"RemoveUserFromGroup"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupRemoveUserResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddMember(RPCGroupAddMemberRequest) returns (RPCGroupAddMemberResponse)

- (void)addMemberWithRequest:(RPCGroupAddMemberRequest *)request handler:(void(^)(RPCGroupAddMemberResponse *response, NSError *error))handler{
  [[self RPCToAddMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToAddMemberWithRequest:(RPCGroupAddMemberRequest *)request handler:(void(^)(RPCGroupAddMemberResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"AddMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupAddMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetMembers(RPCGroupGetMembersRequest) returns (RPCGroupGetMembersResponse)

- (void)getMembersWithRequest:(RPCGroupGetMembersRequest *)request handler:(void(^)(RPCGroupGetMembersResponse *response, NSError *error))handler{
  [[self RPCToGetMembersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetMembersWithRequest:(RPCGroupGetMembersRequest *)request handler:(void(^)(RPCGroupGetMembersResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetMembers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupGetMembersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark EditMember(RPCGroupEditMemberRequest) returns (RPCGroupEditMemberResponse)

- (void)editMemberWithRequest:(RPCGroupEditMemberRequest *)request handler:(void(^)(RPCGroupEditMemberResponse *response, NSError *error))handler{
  [[self RPCToEditMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToEditMemberWithRequest:(RPCGroupEditMemberRequest *)request handler:(void(^)(RPCGroupEditMemberResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"EditMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupEditMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SendInvite(RPCGroupSendInviteRequest) returns (RPCGroupSendInviteResponse)

- (void)sendInviteWithRequest:(RPCGroupSendInviteRequest *)request handler:(void(^)(RPCGroupSendInviteResponse *response, NSError *error))handler{
  [[self RPCToSendInviteWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToSendInviteWithRequest:(RPCGroupSendInviteRequest *)request handler:(void(^)(RPCGroupSendInviteResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"SendInvite"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupSendInviteResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark JoinGroup(RPCGroupJoinGroupRequest) returns (RPCGroupJoinGroupResponse)

- (void)joinGroupWithRequest:(RPCGroupJoinGroupRequest *)request handler:(void(^)(RPCGroupJoinGroupResponse *response, NSError *error))handler{
  [[self RPCToJoinGroupWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToJoinGroupWithRequest:(RPCGroupJoinGroupRequest *)request handler:(void(^)(RPCGroupJoinGroupResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"JoinGroup"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupJoinGroupResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark LeaveGroup(RPCGroupLeaveGroupRequest) returns (RPCGroupLeaveGroupResponse)

- (void)leaveGroupWithRequest:(RPCGroupLeaveGroupRequest *)request handler:(void(^)(RPCGroupLeaveGroupResponse *response, NSError *error))handler{
  [[self RPCToLeaveGroupWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToLeaveGroupWithRequest:(RPCGroupLeaveGroupRequest *)request handler:(void(^)(RPCGroupLeaveGroupResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"LeaveGroup"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupLeaveGroupResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
static NSString *const kPackageName = @"proto";
static NSString *const kServiceName = @"PrefsService";

@implementation PrefsService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:kPackageName serviceName:kServiceName]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark GetPref(RPCPrefsGetPrefRequest) returns (RPCPrefsGetPrefResponse)

- (void)getPrefWithRequest:(RPCPrefsGetPrefRequest *)request handler:(void(^)(RPCPrefsGetPrefResponse *response, NSError *error))handler{
  [[self RPCToGetPrefWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetPrefWithRequest:(RPCPrefsGetPrefRequest *)request handler:(void(^)(RPCPrefsGetPrefResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetPref"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCPrefsGetPrefResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetPrefs(RPCPrefsGetPrefsRequest) returns (RPCPrefsGetPrefsResponse)

- (void)getPrefsWithRequest:(RPCPrefsGetPrefsRequest *)request handler:(void(^)(RPCPrefsGetPrefsResponse *response, NSError *error))handler{
  [[self RPCToGetPrefsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetPrefsWithRequest:(RPCPrefsGetPrefsRequest *)request handler:(void(^)(RPCPrefsGetPrefsResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetPrefs"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCPrefsGetPrefsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SetPrefs(RPCPrefsSetPrefsRequest) returns (RPCPrefsSetPrefsResponse)

- (void)setPrefsWithRequest:(RPCPrefsSetPrefsRequest *)request handler:(void(^)(RPCPrefsSetPrefsResponse *response, NSError *error))handler{
  [[self RPCToSetPrefsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToSetPrefsWithRequest:(RPCPrefsSetPrefsRequest *)request handler:(void(^)(RPCPrefsSetPrefsResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"SetPrefs"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCPrefsSetPrefsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeletePrefs(RPCPrefsDeletePrefsRequest) returns (RPCPrefsDeletePrefsResponse)

- (void)deletePrefsWithRequest:(RPCPrefsDeletePrefsRequest *)request handler:(void(^)(RPCPrefsDeletePrefsResponse *response, NSError *error))handler{
  [[self RPCToDeletePrefsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToDeletePrefsWithRequest:(RPCPrefsDeletePrefsRequest *)request handler:(void(^)(RPCPrefsDeletePrefsResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"DeletePrefs"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCPrefsDeletePrefsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
static NSString *const kPackageName = @"proto";
static NSString *const kServiceName = @"LegacySearchService";

@implementation LegacySearchService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:kPackageName serviceName:kServiceName]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark Search(RPCSearchSearchRequest) returns (RPCSearchSearchResponse)

- (void)searchWithRequest:(RPCSearchSearchRequest *)request handler:(void(^)(RPCSearchSearchResponse *response, NSError *error))handler{
  [[self RPCToSearchWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToSearchWithRequest:(RPCSearchSearchRequest *)request handler:(void(^)(RPCSearchSearchResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"Search"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCSearchSearchResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
