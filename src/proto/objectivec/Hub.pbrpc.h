#import "Hub.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Wrappers.pbobjc.h"
#import "Optional.pbobjc.h"
#import "HubBase.pbobjc.h"
#import "Profile.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol HubService <NSObject>

#pragma mark CreateHub(RPCHubCreateHubRequest) returns (RPCHubCreateHubResponse)

- (void)createHubWithRequest:(RPCHubCreateHubRequest *)request handler:(void(^)(RPCHubCreateHubResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCreateHubWithRequest:(RPCHubCreateHubRequest *)request handler:(void(^)(RPCHubCreateHubResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark EditHub(RPCHubEditHubRequest) returns (RPCHubEditHubResponse)

- (void)editHubWithRequest:(RPCHubEditHubRequest *)request handler:(void(^)(RPCHubEditHubResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToEditHubWithRequest:(RPCHubEditHubRequest *)request handler:(void(^)(RPCHubEditHubResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteHub(RPCHubDeleteHubRequest) returns (RPCHubDeleteHubResponse)

- (void)deleteHubWithRequest:(RPCHubDeleteHubRequest *)request handler:(void(^)(RPCHubDeleteHubResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteHubWithRequest:(RPCHubDeleteHubRequest *)request handler:(void(^)(RPCHubDeleteHubResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetHub(RPCHubGetHubRequest) returns (RPCHubGetHubResponse)

- (void)getHubWithRequest:(RPCHubGetHubRequest *)request handler:(void(^)(RPCHubGetHubResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetHubWithRequest:(RPCHubGetHubRequest *)request handler:(void(^)(RPCHubGetHubResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetAllHubs(RPCHubGetAllHubsRequest) returns (RPCHubGetAllHubsResponse)

- (void)getAllHubsWithRequest:(RPCHubGetAllHubsRequest *)request handler:(void(^)(RPCHubGetAllHubsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetAllHubsWithRequest:(RPCHubGetAllHubsRequest *)request handler:(void(^)(RPCHubGetAllHubsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ValidateTitle(RPCHubValidateTitleRequest) returns (RPCHubValidateTitleResponse)

- (void)validateTitleWithRequest:(RPCHubValidateTitleRequest *)request handler:(void(^)(RPCHubValidateTitleResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToValidateTitleWithRequest:(RPCHubValidateTitleRequest *)request handler:(void(^)(RPCHubValidateTitleResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AddMember(RPCHubAddMemberRequest) returns (RPCHubAddMemberResponse)

- (void)addMemberWithRequest:(RPCHubAddMemberRequest *)request handler:(void(^)(RPCHubAddMemberResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddMemberWithRequest:(RPCHubAddMemberRequest *)request handler:(void(^)(RPCHubAddMemberResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AddMembers(RPCHubAddMembersRequest) returns (RPCHubAddMembersResponse)

- (void)addMembersWithRequest:(RPCHubAddMembersRequest *)request handler:(void(^)(RPCHubAddMembersResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddMembersWithRequest:(RPCHubAddMembersRequest *)request handler:(void(^)(RPCHubAddMembersResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark EditMember(RPCHubEditMemberRequest) returns (RPCHubEditMemberResponse)

- (void)editMemberWithRequest:(RPCHubEditMemberRequest *)request handler:(void(^)(RPCHubEditMemberResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToEditMemberWithRequest:(RPCHubEditMemberRequest *)request handler:(void(^)(RPCHubEditMemberResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetMembers(RPCHubGetMembersRequest) returns (RPCHubGetMembersResponse)

- (void)getMembersWithRequest:(RPCHubGetMembersRequest *)request handler:(void(^)(RPCHubGetMembersResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetMembersWithRequest:(RPCHubGetMembersRequest *)request handler:(void(^)(RPCHubGetMembersResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetHubMember(RPCHubGetMemberRequest) returns (RPCHubGetMemberResponse)

- (void)getHubMemberWithRequest:(RPCHubGetMemberRequest *)request handler:(void(^)(RPCHubGetMemberResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetHubMemberWithRequest:(RPCHubGetMemberRequest *)request handler:(void(^)(RPCHubGetMemberResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AddExternalMember(RPCHubAddExternalMemberRequest) returns (RPCHubAddExternalMemberResponse)

- (void)addExternalMemberWithRequest:(RPCHubAddExternalMemberRequest *)request handler:(void(^)(RPCHubAddExternalMemberResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddExternalMemberWithRequest:(RPCHubAddExternalMemberRequest *)request handler:(void(^)(RPCHubAddExternalMemberResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark EditExternalMember(RPCHubEditExternalMemberRequest) returns (RPCHubEditExternalMemberResponse)

- (void)editExternalMemberWithRequest:(RPCHubEditExternalMemberRequest *)request handler:(void(^)(RPCHubEditExternalMemberResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToEditExternalMemberWithRequest:(RPCHubEditExternalMemberRequest *)request handler:(void(^)(RPCHubEditExternalMemberResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetExternalMembers(RPCHubGetExternalMembersRequest) returns (RPCHubGetExternalMembersResponse)

- (void)getExternalMembersWithRequest:(RPCHubGetExternalMembersRequest *)request handler:(void(^)(RPCHubGetExternalMembersResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetExternalMembersWithRequest:(RPCHubGetExternalMembersRequest *)request handler:(void(^)(RPCHubGetExternalMembersResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SendInvite(RPCHubSendInviteRequest) returns (RPCHubSendInviteResponse)

- (void)sendInviteWithRequest:(RPCHubSendInviteRequest *)request handler:(void(^)(RPCHubSendInviteResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSendInviteWithRequest:(RPCHubSendInviteRequest *)request handler:(void(^)(RPCHubSendInviteResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RequestMembership(RPCHubRequestMembershipRequest) returns (RPCHubRequestMembershipResponse)

- (void)requestMembershipWithRequest:(RPCHubRequestMembershipRequest *)request handler:(void(^)(RPCHubRequestMembershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRequestMembershipWithRequest:(RPCHubRequestMembershipRequest *)request handler:(void(^)(RPCHubRequestMembershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark JoinHub(RPCHubJoinHubRequest) returns (RPCHubJoinHubResponse)

- (void)joinHubWithRequest:(RPCHubJoinHubRequest *)request handler:(void(^)(RPCHubJoinHubResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToJoinHubWithRequest:(RPCHubJoinHubRequest *)request handler:(void(^)(RPCHubJoinHubResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark LeaveHub(RPCHubLeaveHubRequest) returns (RPCHubLeaveHubResponse)

- (void)leaveHubWithRequest:(RPCHubLeaveHubRequest *)request handler:(void(^)(RPCHubLeaveHubResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToLeaveHubWithRequest:(RPCHubLeaveHubRequest *)request handler:(void(^)(RPCHubLeaveHubResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark LinkHub(RPCHubLinkHubRequest) returns (RPCHubLinkHubResponse)

- (void)linkHubWithRequest:(RPCHubLinkHubRequest *)request handler:(void(^)(RPCHubLinkHubResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToLinkHubWithRequest:(RPCHubLinkHubRequest *)request handler:(void(^)(RPCHubLinkHubResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UnlinkHub(RPCHubUnlinkHubRequest) returns (RPCHubUnlinkHubResponse)

- (void)unlinkHubWithRequest:(RPCHubUnlinkHubRequest *)request handler:(void(^)(RPCHubUnlinkHubResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUnlinkHubWithRequest:(RPCHubUnlinkHubRequest *)request handler:(void(^)(RPCHubUnlinkHubResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RegisterExternalUserID(RPCHubRegisterExternalUserIDRequest) returns (RPCHubRegisterExternalUserIDResponse)

- (void)registerExternalUserIDWithRequest:(RPCHubRegisterExternalUserIDRequest *)request handler:(void(^)(RPCHubRegisterExternalUserIDResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRegisterExternalUserIDWithRequest:(RPCHubRegisterExternalUserIDRequest *)request handler:(void(^)(RPCHubRegisterExternalUserIDResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetUserByExternalID(RPCHubGetUserByExternalIDRequest) returns (RPCHubGetUserByExternalIDResponse)

- (void)getUserByExternalIDWithRequest:(RPCHubGetUserByExternalIDRequest *)request handler:(void(^)(RPCHubGetUserByExternalIDResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetUserByExternalIDWithRequest:(RPCHubGetUserByExternalIDRequest *)request handler:(void(^)(RPCHubGetUserByExternalIDResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface HubService : GRPCProtoService<HubService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
