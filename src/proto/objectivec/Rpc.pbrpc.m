#import "Rpc.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation UserService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"UserService"]);
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


#pragma mark Login(RPCAuthLoginRequest) returns (RPCAuthLoginResponse)

- (void)loginWithRequest:(RPCAuthLoginRequest *)request handler:(void(^)(RPCAuthLoginResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToLoginWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToLoginWithRequest:(RPCAuthLoginRequest *)request handler:(void(^)(RPCAuthLoginResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Login"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCAuthLoginResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark LoginOAuth(RPCAuthLoginOAuthRequest) returns (RPCAuthLoginResponse)

- (void)loginOAuthWithRequest:(RPCAuthLoginOAuthRequest *)request handler:(void(^)(RPCAuthLoginResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToLoginOAuthWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToLoginOAuthWithRequest:(RPCAuthLoginOAuthRequest *)request handler:(void(^)(RPCAuthLoginResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"LoginOAuth"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCAuthLoginResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark LoginEmail(RPCAuthLoginEmailRequest) returns (RPCAuthLoginResponse)

- (void)loginEmailWithRequest:(RPCAuthLoginEmailRequest *)request handler:(void(^)(RPCAuthLoginResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToLoginEmailWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToLoginEmailWithRequest:(RPCAuthLoginEmailRequest *)request handler:(void(^)(RPCAuthLoginResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"LoginEmail"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCAuthLoginResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Register(RPCAuthRegisterRequest) returns (AuthRegisterResponse)

- (void)registerWithRequest:(RPCAuthRegisterRequest *)request handler:(void(^)(AuthRegisterResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRegisterWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToRegisterWithRequest:(RPCAuthRegisterRequest *)request handler:(void(^)(AuthRegisterResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Register"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[AuthRegisterResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ConvertEphemeralUser(RPCUserConvertEphemeralUserRequest) returns (RPCUserConvertEphemeralUserResponse)

- (void)convertEphemeralUserWithRequest:(RPCUserConvertEphemeralUserRequest *)request handler:(void(^)(RPCUserConvertEphemeralUserResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToConvertEphemeralUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToConvertEphemeralUserWithRequest:(RPCUserConvertEphemeralUserRequest *)request handler:(void(^)(RPCUserConvertEphemeralUserResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ConvertEphemeralUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserConvertEphemeralUserResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark TransferOwnership(RPCUserTransferOwnershipRequest) returns (RPCUserTransferOwnershipResponse)

- (void)transferOwnershipWithRequest:(RPCUserTransferOwnershipRequest *)request handler:(void(^)(RPCUserTransferOwnershipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToTransferOwnershipWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToTransferOwnershipWithRequest:(RPCUserTransferOwnershipRequest *)request handler:(void(^)(RPCUserTransferOwnershipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"TransferOwnership"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserTransferOwnershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CheckBanStatus(RPCUserCheckBanStatusRequest) returns (RPCUserCheckBanStatusResponse)

- (void)checkBanStatusWithRequest:(RPCUserCheckBanStatusRequest *)request handler:(void(^)(RPCUserCheckBanStatusResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCheckBanStatusWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCheckBanStatusWithRequest:(RPCUserCheckBanStatusRequest *)request handler:(void(^)(RPCUserCheckBanStatusResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CheckBanStatus"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserCheckBanStatusResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetUser(RPCUserGetUserRequest) returns (RPCUserGetUserResponse)

- (void)getUserWithRequest:(RPCUserGetUserRequest *)request handler:(void(^)(RPCUserGetUserResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetUserWithRequest:(RPCUserGetUserRequest *)request handler:(void(^)(RPCUserGetUserResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserGetUserResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteUser(RPCUserDeleteUserRequest) returns (RPCUserDeleteUserResponse)

- (void)deleteUserWithRequest:(RPCUserDeleteUserRequest *)request handler:(void(^)(RPCUserDeleteUserResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeleteUserWithRequest:(RPCUserDeleteUserRequest *)request handler:(void(^)(RPCUserDeleteUserResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserDeleteUserResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RemoveUserFromHubs(RPCUserRemoveUserFromHubsRequest) returns (RPCUserRemoveUserFromHubsResponse)

- (void)removeUserFromHubsWithRequest:(RPCUserRemoveUserFromHubsRequest *)request handler:(void(^)(RPCUserRemoveUserFromHubsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRemoveUserFromHubsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToRemoveUserFromHubsWithRequest:(RPCUserRemoveUserFromHubsRequest *)request handler:(void(^)(RPCUserRemoveUserFromHubsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RemoveUserFromHubs"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserRemoveUserFromHubsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ValidateUsername(RPCUserValidateUsernameRequest) returns (RPCUserValidateUsernameResponse)

- (void)validateUsernameWithRequest:(RPCUserValidateUsernameRequest *)request handler:(void(^)(RPCUserValidateUsernameResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToValidateUsernameWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToValidateUsernameWithRequest:(RPCUserValidateUsernameRequest *)request handler:(void(^)(RPCUserValidateUsernameResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ValidateUsername"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserValidateUsernameResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ValidateEmailAddress(RPCUserValidateEmailAddressRequest) returns (RPCUserValidateEmailAddressResponse)

- (void)validateEmailAddressWithRequest:(RPCUserValidateEmailAddressRequest *)request handler:(void(^)(RPCUserValidateEmailAddressResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToValidateEmailAddressWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToValidateEmailAddressWithRequest:(RPCUserValidateEmailAddressRequest *)request handler:(void(^)(RPCUserValidateEmailAddressResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ValidateEmailAddress"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserValidateEmailAddressResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetUserAgent(RPCUserGetUserAgentRequest) returns (RPCUserGetUserAgentResponse)

- (void)getUserAgentWithRequest:(RPCUserGetUserAgentRequest *)request handler:(void(^)(RPCUserGetUserAgentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetUserAgentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetUserAgentWithRequest:(RPCUserGetUserAgentRequest *)request handler:(void(^)(RPCUserGetUserAgentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetUserAgent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserGetUserAgentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetOwnProfile(RPCUserGetOwnProfileRequest) returns (RPCUserGetOwnProfileResponse)

- (void)getOwnProfileWithRequest:(RPCUserGetOwnProfileRequest *)request handler:(void(^)(RPCUserGetOwnProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetOwnProfileWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetOwnProfileWithRequest:(RPCUserGetOwnProfileRequest *)request handler:(void(^)(RPCUserGetOwnProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetOwnProfile"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserGetOwnProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetOtherProfile(RPCUserGetOtherProfileRequest) returns (RPCUserGetOtherProfileResponse)

- (void)getOtherProfileWithRequest:(RPCUserGetOtherProfileRequest *)request handler:(void(^)(RPCUserGetOtherProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetOtherProfileWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetOtherProfileWithRequest:(RPCUserGetOtherProfileRequest *)request handler:(void(^)(RPCUserGetOtherProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetOtherProfile"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserGetOtherProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UpdateUser(RPCUserUpdateRequest) returns (RPCUserUpdateResponse)

- (void)updateUserWithRequest:(RPCUserUpdateRequest *)request handler:(void(^)(RPCUserUpdateResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdateUserWithRequest:(RPCUserUpdateRequest *)request handler:(void(^)(RPCUserUpdateResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserUpdateResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RequestFriendship(RPCUserFriendshipRequest) returns (RPCUserFriendshipRequestResponse)

- (void)requestFriendshipWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCUserFriendshipRequestResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRequestFriendshipWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToRequestFriendshipWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCUserFriendshipRequestResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RequestFriendship"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserFriendshipRequestResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Unfriend(RPCUserFriendshipRequest) returns (RPCGenericResponse)

- (void)unfriendWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCGenericResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUnfriendWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUnfriendWithRequest:(RPCUserFriendshipRequest *)request handler:(void(^)(RPCGenericResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Unfriend"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGenericResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetFriends(RPCUserGetFriendsRequest) returns (RPCUserGetFriendsResponse)

- (void)getFriendsWithRequest:(RPCUserGetFriendsRequest *)request handler:(void(^)(RPCUserGetFriendsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetFriendsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetFriendsWithRequest:(RPCUserGetFriendsRequest *)request handler:(void(^)(RPCUserGetFriendsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetFriends"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserGetFriendsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RequestActivationEmail(RPCUserActivationEmailRequest) returns (RPCUserActivationEmailResponse)

- (void)requestActivationEmailWithRequest:(RPCUserActivationEmailRequest *)request handler:(void(^)(RPCUserActivationEmailResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRequestActivationEmailWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToRequestActivationEmailWithRequest:(RPCUserActivationEmailRequest *)request handler:(void(^)(RPCUserActivationEmailResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RequestActivationEmail"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserActivationEmailResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ExecuteActivation(RPCUserExecuteActivationRequest) returns (RPCUserExecuteActivationResponse)

- (void)executeActivationWithRequest:(RPCUserExecuteActivationRequest *)request handler:(void(^)(RPCUserExecuteActivationResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToExecuteActivationWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToExecuteActivationWithRequest:(RPCUserExecuteActivationRequest *)request handler:(void(^)(RPCUserExecuteActivationResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ExecuteActivation"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserExecuteActivationResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RequestPasswordReset(RPCUserPasswordResetEmailRequest) returns (RPCUserPasswordResetEmailResponse)

- (void)requestPasswordResetWithRequest:(RPCUserPasswordResetEmailRequest *)request handler:(void(^)(RPCUserPasswordResetEmailResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRequestPasswordResetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToRequestPasswordResetWithRequest:(RPCUserPasswordResetEmailRequest *)request handler:(void(^)(RPCUserPasswordResetEmailResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RequestPasswordReset"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserPasswordResetEmailResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetPasswordResetInfo(RPCUserGetPasswordResetInfoRequest) returns (RPCUserGetPasswordResetInfoResponse)

- (void)getPasswordResetInfoWithRequest:(RPCUserGetPasswordResetInfoRequest *)request handler:(void(^)(RPCUserGetPasswordResetInfoResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPasswordResetInfoWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetPasswordResetInfoWithRequest:(RPCUserGetPasswordResetInfoRequest *)request handler:(void(^)(RPCUserGetPasswordResetInfoResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPasswordResetInfo"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserGetPasswordResetInfoResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ExecutePasswordReset(RPCUserExecutePasswordResetRequest) returns (RPCUserExecutePasswordResetResponse)

- (void)executePasswordResetWithRequest:(RPCUserExecutePasswordResetRequest *)request handler:(void(^)(RPCUserExecutePasswordResetResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToExecutePasswordResetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToExecutePasswordResetWithRequest:(RPCUserExecutePasswordResetRequest *)request handler:(void(^)(RPCUserExecutePasswordResetResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ExecutePasswordReset"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserExecutePasswordResetResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UpdatePassword(RPCUserUpdatePasswordRequest) returns (RPCUserUpdatePasswordResponse)

- (void)updatePasswordWithRequest:(RPCUserUpdatePasswordRequest *)request handler:(void(^)(RPCUserUpdatePasswordResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdatePasswordWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdatePasswordWithRequest:(RPCUserUpdatePasswordRequest *)request handler:(void(^)(RPCUserUpdatePasswordResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdatePassword"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserUpdatePasswordResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetUserProfile(RPCProfileGetRequest) returns (UserProfile)

- (void)getUserProfileWithRequest:(RPCProfileGetRequest *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetUserProfileWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetUserProfileWithRequest:(RPCProfileGetRequest *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetUserProfile"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[UserProfile class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UpdateGameEntry(UserGame) returns (UserProfile)

- (void)updateGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateGameEntryWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdateGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateGameEntry"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[UserProfile class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteGameEntry(UserGame) returns (UserProfile)

- (void)deleteGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteGameEntryWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeleteGameEntryWithRequest:(UserGame *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteGameEntry"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[UserProfile class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UpdateUserAccount(UserAccount) returns (UserProfile)

- (void)updateUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateUserAccountWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdateUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateUserAccount"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[UserProfile class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteUserAccount(UserAccount) returns (UserProfile)

- (void)deleteUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteUserAccountWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeleteUserAccountWithRequest:(UserAccount *)request handler:(void(^)(UserProfile *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteUserAccount"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[UserProfile class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SetChannelRole(RPCUserSetChannelRoleRequest) returns (RPCUserSetChannelRoleResponse)

- (void)setChannelRoleWithRequest:(RPCUserSetChannelRoleRequest *)request handler:(void(^)(RPCUserSetChannelRoleResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSetChannelRoleWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSetChannelRoleWithRequest:(RPCUserSetChannelRoleRequest *)request handler:(void(^)(RPCUserSetChannelRoleResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SetChannelRole"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserSetChannelRoleResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SetGroupRole(RPCUserSetGroupRoleRequest) returns (RPCUserSetGroupRoleResponse)

- (void)setGroupRoleWithRequest:(RPCUserSetGroupRoleRequest *)request handler:(void(^)(RPCUserSetGroupRoleResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSetGroupRoleWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSetGroupRoleWithRequest:(RPCUserSetGroupRoleRequest *)request handler:(void(^)(RPCUserSetGroupRoleResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SetGroupRole"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserSetGroupRoleResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CreateProprietaryGroupMembership(RPCCreateRelationRequest) returns (RPCCreateRelationResponse)

- (void)createProprietaryGroupMembershipWithRequest:(RPCCreateRelationRequest *)request handler:(void(^)(RPCCreateRelationResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateProprietaryGroupMembershipWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCreateProprietaryGroupMembershipWithRequest:(RPCCreateRelationRequest *)request handler:(void(^)(RPCCreateRelationResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateProprietaryGroupMembership"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCCreateRelationResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UpdateVoiceStatus(RPCUserUpdateVoiceStatusRequest) returns (RPCUserUpdateVoiceStatusResponse)

- (void)updateVoiceStatusWithRequest:(RPCUserUpdateVoiceStatusRequest *)request handler:(void(^)(RPCUserUpdateVoiceStatusResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateVoiceStatusWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdateVoiceStatusWithRequest:(RPCUserUpdateVoiceStatusRequest *)request handler:(void(^)(RPCUserUpdateVoiceStatusResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateVoiceStatus"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserUpdateVoiceStatusResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddContact(RPCUserAddContactRequest) returns (RPCUserAddContactResponse)

- (void)addContactWithRequest:(RPCUserAddContactRequest *)request handler:(void(^)(RPCUserAddContactResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddContactWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddContactWithRequest:(RPCUserAddContactRequest *)request handler:(void(^)(RPCUserAddContactResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AddContact"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserAddContactResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RemoveContact(RPCUserRemoveContactRequest) returns (RPCUserRemoveContactResponse)

- (void)removeContactWithRequest:(RPCUserRemoveContactRequest *)request handler:(void(^)(RPCUserRemoveContactResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRemoveContactWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToRemoveContactWithRequest:(RPCUserRemoveContactRequest *)request handler:(void(^)(RPCUserRemoveContactResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RemoveContact"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserRemoveContactResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetContacts(RPCUserGetContactsRequest) returns (RPCUserGetContactsResponse)

- (void)getContactsWithRequest:(RPCUserGetContactsRequest *)request handler:(void(^)(RPCUserGetContactsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetContactsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetContactsWithRequest:(RPCUserGetContactsRequest *)request handler:(void(^)(RPCUserGetContactsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetContacts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserGetContactsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddMutualContacts(RPCUserAddMutualContactsRequest) returns (RPCUserAddMutualContactsResponse)

- (void)addMutualContactsWithRequest:(RPCUserAddMutualContactsRequest *)request handler:(void(^)(RPCUserAddMutualContactsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddMutualContactsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddMutualContactsWithRequest:(RPCUserAddMutualContactsRequest *)request handler:(void(^)(RPCUserAddMutualContactsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AddMutualContacts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserAddMutualContactsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark EditBlockedUser(RPCUserEditBlockedUserRequest) returns (RPCUserEditBlockedUserResponse)

- (void)editBlockedUserWithRequest:(RPCUserEditBlockedUserRequest *)request handler:(void(^)(RPCUserEditBlockedUserResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToEditBlockedUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToEditBlockedUserWithRequest:(RPCUserEditBlockedUserRequest *)request handler:(void(^)(RPCUserEditBlockedUserResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"EditBlockedUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserEditBlockedUserResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetBlockedUsers(RPCUserGetBlockedUsersRequest) returns (RPCUserGetBlockedUsersResponse)

- (void)getBlockedUsersWithRequest:(RPCUserGetBlockedUsersRequest *)request handler:(void(^)(RPCUserGetBlockedUsersResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetBlockedUsersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetBlockedUsersWithRequest:(RPCUserGetBlockedUsersRequest *)request handler:(void(^)(RPCUserGetBlockedUsersResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetBlockedUsers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserGetBlockedUsersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
@implementation GroupService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"GroupService"]);
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

- (void)createGroupWithRequest:(RPCGroupCreateGroupRequest *)request handler:(void(^)(RPCGroupCreateGroupResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateGroupWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCreateGroupWithRequest:(RPCGroupCreateGroupRequest *)request handler:(void(^)(RPCGroupCreateGroupResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateGroup"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupCreateGroupResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark EditGroup(RPCGroupEditGroupRequest) returns (RPCGroupEditGroupResponse)

- (void)editGroupWithRequest:(RPCGroupEditGroupRequest *)request handler:(void(^)(RPCGroupEditGroupResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToEditGroupWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToEditGroupWithRequest:(RPCGroupEditGroupRequest *)request handler:(void(^)(RPCGroupEditGroupResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"EditGroup"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupEditGroupResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetGroup(RPCGroupGetGroupRequest) returns (RPCGroupGetGroupResponse)

- (void)getGroupWithRequest:(RPCGroupGetGroupRequest *)request handler:(void(^)(RPCGroupGetGroupResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetGroupWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetGroupWithRequest:(RPCGroupGetGroupRequest *)request handler:(void(^)(RPCGroupGetGroupResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetGroup"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupGetGroupResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetGroups(RPCGroupGetGroupsRequest) returns (RPCGroupGetGroupsResponse)

- (void)getGroupsWithRequest:(RPCGroupGetGroupsRequest *)request handler:(void(^)(RPCGroupGetGroupsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetGroupsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetGroupsWithRequest:(RPCGroupGetGroupsRequest *)request handler:(void(^)(RPCGroupGetGroupsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetGroups"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupGetGroupsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetGroupsForUser(RPCGroupGetGroupsForUserRequest) returns (RPCGroupGetGroupsForUserResponse)

- (void)getGroupsForUserWithRequest:(RPCGroupGetGroupsForUserRequest *)request handler:(void(^)(RPCGroupGetGroupsForUserResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetGroupsForUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetGroupsForUserWithRequest:(RPCGroupGetGroupsForUserRequest *)request handler:(void(^)(RPCGroupGetGroupsForUserResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetGroupsForUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupGetGroupsForUserResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddGroupMember(RPCGroupAddGroupMemberRequest) returns (RPCGroupAddGroupMemberResponse)

- (void)addGroupMemberWithRequest:(RPCGroupAddGroupMemberRequest *)request handler:(void(^)(RPCGroupAddGroupMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddGroupMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddGroupMemberWithRequest:(RPCGroupAddGroupMemberRequest *)request handler:(void(^)(RPCGroupAddGroupMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AddGroupMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupAddGroupMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddGroupMembers(RPCGroupAddGroupMembersRequest) returns (RPCGroupAddGroupMembersResponse)

- (void)addGroupMembersWithRequest:(RPCGroupAddGroupMembersRequest *)request handler:(void(^)(RPCGroupAddGroupMembersResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddGroupMembersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddGroupMembersWithRequest:(RPCGroupAddGroupMembersRequest *)request handler:(void(^)(RPCGroupAddGroupMembersResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AddGroupMembers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupAddGroupMembersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RemoveGroupMember(RPCGroupRemoveGroupMemberRequest) returns (RPCGroupRemoveGroupMemberResponse)

- (void)removeGroupMemberWithRequest:(RPCGroupRemoveGroupMemberRequest *)request handler:(void(^)(RPCGroupRemoveGroupMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRemoveGroupMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToRemoveGroupMemberWithRequest:(RPCGroupRemoveGroupMemberRequest *)request handler:(void(^)(RPCGroupRemoveGroupMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RemoveGroupMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupRemoveGroupMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CheckGroupMembership(RPCGroupCheckGroupMembershipRequest) returns (RPCGroupCheckGroupMembershipResponse)

- (void)checkGroupMembershipWithRequest:(RPCGroupCheckGroupMembershipRequest *)request handler:(void(^)(RPCGroupCheckGroupMembershipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCheckGroupMembershipWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCheckGroupMembershipWithRequest:(RPCGroupCheckGroupMembershipRequest *)request handler:(void(^)(RPCGroupCheckGroupMembershipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CheckGroupMembership"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupCheckGroupMembershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CreateInviteCode(RPCGroupCreateInviteCodeRequest) returns (RPCGroupCreateInviteCodeResponse)

- (void)createInviteCodeWithRequest:(RPCGroupCreateInviteCodeRequest *)request handler:(void(^)(RPCGroupCreateInviteCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateInviteCodeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCreateInviteCodeWithRequest:(RPCGroupCreateInviteCodeRequest *)request handler:(void(^)(RPCGroupCreateInviteCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateInviteCode"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupCreateInviteCodeResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetInviteCodeInfo(RPCGroupGetInviteCodeInfoRequest) returns (RPCGroupGetInviteCodeInfoResponse)

- (void)getInviteCodeInfoWithRequest:(RPCGroupGetInviteCodeInfoRequest *)request handler:(void(^)(RPCGroupGetInviteCodeInfoResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetInviteCodeInfoWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetInviteCodeInfoWithRequest:(RPCGroupGetInviteCodeInfoRequest *)request handler:(void(^)(RPCGroupGetInviteCodeInfoResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetInviteCodeInfo"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupGetInviteCodeInfoResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AcceptInvite(RPCGroupAcceptInviteRequest) returns (RPCGroupAcceptInviteResponse)

- (void)acceptInviteWithRequest:(RPCGroupAcceptInviteRequest *)request handler:(void(^)(RPCGroupAcceptInviteResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAcceptInviteWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAcceptInviteWithRequest:(RPCGroupAcceptInviteRequest *)request handler:(void(^)(RPCGroupAcceptInviteResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AcceptInvite"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupAcceptInviteResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetGroupToken(RPCGroupGetGroupTokenRequest) returns (RPCGroupGetGroupTokenResponse)

- (void)getGroupTokenWithRequest:(RPCGroupGetGroupTokenRequest *)request handler:(void(^)(RPCGroupGetGroupTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetGroupTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetGroupTokenWithRequest:(RPCGroupGetGroupTokenRequest *)request handler:(void(^)(RPCGroupGetGroupTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetGroupToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupGetGroupTokenResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetAssociatedGroupUsers(StringValue) returns (RPCAssociatedGroupUsersResponse)

/**
 * Load all users that are associated to a group
 * 1. All owners or members of that Group
 * 2. All users that currently subscribing atleast one group channel
 */
- (void)getAssociatedGroupUsersWithRequest:(GPBStringValue *)request handler:(void(^)(RPCAssociatedGroupUsersResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAssociatedGroupUsersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Load all users that are associated to a group
 * 1. All owners or members of that Group
 * 2. All users that currently subscribing atleast one group channel
 */
- (GRPCProtoCall *)RPCToGetAssociatedGroupUsersWithRequest:(GPBStringValue *)request handler:(void(^)(RPCAssociatedGroupUsersResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAssociatedGroupUsers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCAssociatedGroupUsersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RemoveUserFromGroup(RPCGroupRemoveUserRequest) returns (RPCGroupRemoveUserResponse)

- (void)removeUserFromGroupWithRequest:(RPCGroupRemoveUserRequest *)request handler:(void(^)(RPCGroupRemoveUserResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRemoveUserFromGroupWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToRemoveUserFromGroupWithRequest:(RPCGroupRemoveUserRequest *)request handler:(void(^)(RPCGroupRemoveUserResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RemoveUserFromGroup"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupRemoveUserResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddMember(RPCGroupAddMemberRequest) returns (RPCGroupAddMemberResponse)

- (void)addMemberWithRequest:(RPCGroupAddMemberRequest *)request handler:(void(^)(RPCGroupAddMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddMemberWithRequest:(RPCGroupAddMemberRequest *)request handler:(void(^)(RPCGroupAddMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AddMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupAddMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetMembers(RPCGroupGetMembersRequest) returns (RPCGroupGetMembersResponse)

- (void)getMembersWithRequest:(RPCGroupGetMembersRequest *)request handler:(void(^)(RPCGroupGetMembersResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetMembersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetMembersWithRequest:(RPCGroupGetMembersRequest *)request handler:(void(^)(RPCGroupGetMembersResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetMembers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupGetMembersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark EditMember(RPCGroupEditMemberRequest) returns (RPCGroupEditMemberResponse)

- (void)editMemberWithRequest:(RPCGroupEditMemberRequest *)request handler:(void(^)(RPCGroupEditMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToEditMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToEditMemberWithRequest:(RPCGroupEditMemberRequest *)request handler:(void(^)(RPCGroupEditMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"EditMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupEditMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SendInvite(RPCGroupSendInviteRequest) returns (RPCGroupSendInviteResponse)

- (void)sendInviteWithRequest:(RPCGroupSendInviteRequest *)request handler:(void(^)(RPCGroupSendInviteResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSendInviteWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSendInviteWithRequest:(RPCGroupSendInviteRequest *)request handler:(void(^)(RPCGroupSendInviteResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SendInvite"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupSendInviteResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark JoinGroup(RPCGroupJoinGroupRequest) returns (RPCGroupJoinGroupResponse)

- (void)joinGroupWithRequest:(RPCGroupJoinGroupRequest *)request handler:(void(^)(RPCGroupJoinGroupResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToJoinGroupWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToJoinGroupWithRequest:(RPCGroupJoinGroupRequest *)request handler:(void(^)(RPCGroupJoinGroupResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"JoinGroup"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupJoinGroupResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark LeaveGroup(RPCGroupLeaveGroupRequest) returns (RPCGroupLeaveGroupResponse)

- (void)leaveGroupWithRequest:(RPCGroupLeaveGroupRequest *)request handler:(void(^)(RPCGroupLeaveGroupResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToLeaveGroupWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToLeaveGroupWithRequest:(RPCGroupLeaveGroupRequest *)request handler:(void(^)(RPCGroupLeaveGroupResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"LeaveGroup"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGroupLeaveGroupResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
@implementation PrefsService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"PrefsService"]);
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

- (void)getPrefWithRequest:(RPCPrefsGetPrefRequest *)request handler:(void(^)(RPCPrefsGetPrefResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPrefWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetPrefWithRequest:(RPCPrefsGetPrefRequest *)request handler:(void(^)(RPCPrefsGetPrefResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPref"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCPrefsGetPrefResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetPrefs(RPCPrefsGetPrefsRequest) returns (RPCPrefsGetPrefsResponse)

- (void)getPrefsWithRequest:(RPCPrefsGetPrefsRequest *)request handler:(void(^)(RPCPrefsGetPrefsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPrefsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetPrefsWithRequest:(RPCPrefsGetPrefsRequest *)request handler:(void(^)(RPCPrefsGetPrefsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPrefs"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCPrefsGetPrefsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SetPrefs(RPCPrefsSetPrefsRequest) returns (RPCPrefsSetPrefsResponse)

- (void)setPrefsWithRequest:(RPCPrefsSetPrefsRequest *)request handler:(void(^)(RPCPrefsSetPrefsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSetPrefsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSetPrefsWithRequest:(RPCPrefsSetPrefsRequest *)request handler:(void(^)(RPCPrefsSetPrefsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SetPrefs"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCPrefsSetPrefsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeletePrefs(RPCPrefsDeletePrefsRequest) returns (RPCPrefsDeletePrefsResponse)

- (void)deletePrefsWithRequest:(RPCPrefsDeletePrefsRequest *)request handler:(void(^)(RPCPrefsDeletePrefsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeletePrefsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeletePrefsWithRequest:(RPCPrefsDeletePrefsRequest *)request handler:(void(^)(RPCPrefsDeletePrefsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeletePrefs"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCPrefsDeletePrefsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
@implementation LegacySearchService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"LegacySearchService"]);
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

- (void)searchWithRequest:(RPCSearchSearchRequest *)request handler:(void(^)(RPCSearchSearchResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSearchWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSearchWithRequest:(RPCSearchSearchRequest *)request handler:(void(^)(RPCSearchSearchResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Search"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCSearchSearchResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
