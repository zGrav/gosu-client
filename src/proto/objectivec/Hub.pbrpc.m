#import "Hub.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation HubService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"HubService"]);
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


#pragma mark CreateHub(RPCHubCreateHubRequest) returns (RPCHubCreateHubResponse)

- (void)createHubWithRequest:(RPCHubCreateHubRequest *)request handler:(void(^)(RPCHubCreateHubResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateHubWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCreateHubWithRequest:(RPCHubCreateHubRequest *)request handler:(void(^)(RPCHubCreateHubResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateHub"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubCreateHubResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark EditHub(RPCHubEditHubRequest) returns (RPCHubEditHubResponse)

- (void)editHubWithRequest:(RPCHubEditHubRequest *)request handler:(void(^)(RPCHubEditHubResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToEditHubWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToEditHubWithRequest:(RPCHubEditHubRequest *)request handler:(void(^)(RPCHubEditHubResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"EditHub"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubEditHubResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteHub(RPCHubDeleteHubRequest) returns (RPCHubDeleteHubResponse)

- (void)deleteHubWithRequest:(RPCHubDeleteHubRequest *)request handler:(void(^)(RPCHubDeleteHubResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteHubWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeleteHubWithRequest:(RPCHubDeleteHubRequest *)request handler:(void(^)(RPCHubDeleteHubResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteHub"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubDeleteHubResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetHub(RPCHubGetHubRequest) returns (RPCHubGetHubResponse)

- (void)getHubWithRequest:(RPCHubGetHubRequest *)request handler:(void(^)(RPCHubGetHubResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetHubWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetHubWithRequest:(RPCHubGetHubRequest *)request handler:(void(^)(RPCHubGetHubResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetHub"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubGetHubResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetAllHubs(RPCHubGetAllHubsRequest) returns (RPCHubGetAllHubsResponse)

- (void)getAllHubsWithRequest:(RPCHubGetAllHubsRequest *)request handler:(void(^)(RPCHubGetAllHubsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAllHubsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetAllHubsWithRequest:(RPCHubGetAllHubsRequest *)request handler:(void(^)(RPCHubGetAllHubsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAllHubs"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubGetAllHubsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ValidateTitle(RPCHubValidateTitleRequest) returns (RPCHubValidateTitleResponse)

- (void)validateTitleWithRequest:(RPCHubValidateTitleRequest *)request handler:(void(^)(RPCHubValidateTitleResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToValidateTitleWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToValidateTitleWithRequest:(RPCHubValidateTitleRequest *)request handler:(void(^)(RPCHubValidateTitleResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ValidateTitle"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubValidateTitleResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddMember(RPCHubAddMemberRequest) returns (RPCHubAddMemberResponse)

- (void)addMemberWithRequest:(RPCHubAddMemberRequest *)request handler:(void(^)(RPCHubAddMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddMemberWithRequest:(RPCHubAddMemberRequest *)request handler:(void(^)(RPCHubAddMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AddMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubAddMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddMembers(RPCHubAddMembersRequest) returns (RPCHubAddMembersResponse)

- (void)addMembersWithRequest:(RPCHubAddMembersRequest *)request handler:(void(^)(RPCHubAddMembersResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddMembersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddMembersWithRequest:(RPCHubAddMembersRequest *)request handler:(void(^)(RPCHubAddMembersResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AddMembers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubAddMembersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark EditMember(RPCHubEditMemberRequest) returns (RPCHubEditMemberResponse)

- (void)editMemberWithRequest:(RPCHubEditMemberRequest *)request handler:(void(^)(RPCHubEditMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToEditMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToEditMemberWithRequest:(RPCHubEditMemberRequest *)request handler:(void(^)(RPCHubEditMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"EditMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubEditMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetMembers(RPCHubGetMembersRequest) returns (RPCHubGetMembersResponse)

- (void)getMembersWithRequest:(RPCHubGetMembersRequest *)request handler:(void(^)(RPCHubGetMembersResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetMembersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetMembersWithRequest:(RPCHubGetMembersRequest *)request handler:(void(^)(RPCHubGetMembersResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetMembers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubGetMembersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetHubMember(RPCHubGetMemberRequest) returns (RPCHubGetMemberResponse)

- (void)getHubMemberWithRequest:(RPCHubGetMemberRequest *)request handler:(void(^)(RPCHubGetMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetHubMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetHubMemberWithRequest:(RPCHubGetMemberRequest *)request handler:(void(^)(RPCHubGetMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetHubMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubGetMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddExternalMember(RPCHubAddExternalMemberRequest) returns (RPCHubAddExternalMemberResponse)

- (void)addExternalMemberWithRequest:(RPCHubAddExternalMemberRequest *)request handler:(void(^)(RPCHubAddExternalMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddExternalMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddExternalMemberWithRequest:(RPCHubAddExternalMemberRequest *)request handler:(void(^)(RPCHubAddExternalMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AddExternalMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubAddExternalMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark EditExternalMember(RPCHubEditExternalMemberRequest) returns (RPCHubEditExternalMemberResponse)

- (void)editExternalMemberWithRequest:(RPCHubEditExternalMemberRequest *)request handler:(void(^)(RPCHubEditExternalMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToEditExternalMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToEditExternalMemberWithRequest:(RPCHubEditExternalMemberRequest *)request handler:(void(^)(RPCHubEditExternalMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"EditExternalMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubEditExternalMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetExternalMembers(RPCHubGetExternalMembersRequest) returns (RPCHubGetExternalMembersResponse)

- (void)getExternalMembersWithRequest:(RPCHubGetExternalMembersRequest *)request handler:(void(^)(RPCHubGetExternalMembersResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetExternalMembersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetExternalMembersWithRequest:(RPCHubGetExternalMembersRequest *)request handler:(void(^)(RPCHubGetExternalMembersResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetExternalMembers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubGetExternalMembersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SendInvite(RPCHubSendInviteRequest) returns (RPCHubSendInviteResponse)

- (void)sendInviteWithRequest:(RPCHubSendInviteRequest *)request handler:(void(^)(RPCHubSendInviteResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSendInviteWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSendInviteWithRequest:(RPCHubSendInviteRequest *)request handler:(void(^)(RPCHubSendInviteResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SendInvite"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubSendInviteResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RequestMembership(RPCHubRequestMembershipRequest) returns (RPCHubRequestMembershipResponse)

- (void)requestMembershipWithRequest:(RPCHubRequestMembershipRequest *)request handler:(void(^)(RPCHubRequestMembershipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRequestMembershipWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToRequestMembershipWithRequest:(RPCHubRequestMembershipRequest *)request handler:(void(^)(RPCHubRequestMembershipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RequestMembership"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubRequestMembershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark JoinHub(RPCHubJoinHubRequest) returns (RPCHubJoinHubResponse)

- (void)joinHubWithRequest:(RPCHubJoinHubRequest *)request handler:(void(^)(RPCHubJoinHubResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToJoinHubWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToJoinHubWithRequest:(RPCHubJoinHubRequest *)request handler:(void(^)(RPCHubJoinHubResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"JoinHub"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubJoinHubResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark LeaveHub(RPCHubLeaveHubRequest) returns (RPCHubLeaveHubResponse)

- (void)leaveHubWithRequest:(RPCHubLeaveHubRequest *)request handler:(void(^)(RPCHubLeaveHubResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToLeaveHubWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToLeaveHubWithRequest:(RPCHubLeaveHubRequest *)request handler:(void(^)(RPCHubLeaveHubResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"LeaveHub"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubLeaveHubResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark LinkHub(RPCHubLinkHubRequest) returns (RPCHubLinkHubResponse)

- (void)linkHubWithRequest:(RPCHubLinkHubRequest *)request handler:(void(^)(RPCHubLinkHubResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToLinkHubWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToLinkHubWithRequest:(RPCHubLinkHubRequest *)request handler:(void(^)(RPCHubLinkHubResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"LinkHub"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubLinkHubResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UnlinkHub(RPCHubUnlinkHubRequest) returns (RPCHubUnlinkHubResponse)

- (void)unlinkHubWithRequest:(RPCHubUnlinkHubRequest *)request handler:(void(^)(RPCHubUnlinkHubResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUnlinkHubWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUnlinkHubWithRequest:(RPCHubUnlinkHubRequest *)request handler:(void(^)(RPCHubUnlinkHubResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UnlinkHub"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubUnlinkHubResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RegisterExternalUserID(RPCHubRegisterExternalUserIDRequest) returns (RPCHubRegisterExternalUserIDResponse)

- (void)registerExternalUserIDWithRequest:(RPCHubRegisterExternalUserIDRequest *)request handler:(void(^)(RPCHubRegisterExternalUserIDResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRegisterExternalUserIDWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToRegisterExternalUserIDWithRequest:(RPCHubRegisterExternalUserIDRequest *)request handler:(void(^)(RPCHubRegisterExternalUserIDResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RegisterExternalUserID"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubRegisterExternalUserIDResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetUserByExternalID(RPCHubGetUserByExternalIDRequest) returns (RPCHubGetUserByExternalIDResponse)

- (void)getUserByExternalIDWithRequest:(RPCHubGetUserByExternalIDRequest *)request handler:(void(^)(RPCHubGetUserByExternalIDResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetUserByExternalIDWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetUserByExternalIDWithRequest:(RPCHubGetUserByExternalIDRequest *)request handler:(void(^)(RPCHubGetUserByExternalIDResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetUserByExternalID"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCHubGetUserByExternalIDResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
