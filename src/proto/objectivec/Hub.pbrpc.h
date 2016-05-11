#import "Hub.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Wrappers.pbobjc.h"
#import "Optional.pbobjc.h"
#import "HubBase.pbobjc.h"
#import "Profile.pbobjc.h"

@protocol HubService <NSObject>

#pragma mark CreateHub(RPCHubCreateHubRequest) returns (RPCHubCreateHubResponse)

- (void)createHubWithRequest:(RPCHubCreateHubRequest *)request handler:(void(^)(RPCHubCreateHubResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToCreateHubWithRequest:(RPCHubCreateHubRequest *)request handler:(void(^)(RPCHubCreateHubResponse *response, NSError *error))handler;


#pragma mark EditHub(RPCHubEditHubRequest) returns (RPCHubEditHubResponse)

- (void)editHubWithRequest:(RPCHubEditHubRequest *)request handler:(void(^)(RPCHubEditHubResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToEditHubWithRequest:(RPCHubEditHubRequest *)request handler:(void(^)(RPCHubEditHubResponse *response, NSError *error))handler;


#pragma mark DeleteHub(RPCHubDeleteHubRequest) returns (RPCHubDeleteHubResponse)

- (void)deleteHubWithRequest:(RPCHubDeleteHubRequest *)request handler:(void(^)(RPCHubDeleteHubResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToDeleteHubWithRequest:(RPCHubDeleteHubRequest *)request handler:(void(^)(RPCHubDeleteHubResponse *response, NSError *error))handler;


#pragma mark GetHub(RPCHubGetHubRequest) returns (RPCHubGetHubResponse)

- (void)getHubWithRequest:(RPCHubGetHubRequest *)request handler:(void(^)(RPCHubGetHubResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetHubWithRequest:(RPCHubGetHubRequest *)request handler:(void(^)(RPCHubGetHubResponse *response, NSError *error))handler;


#pragma mark GetAllHubs(RPCHubGetAllHubsRequest) returns (RPCHubGetAllHubsResponse)

- (void)getAllHubsWithRequest:(RPCHubGetAllHubsRequest *)request handler:(void(^)(RPCHubGetAllHubsResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetAllHubsWithRequest:(RPCHubGetAllHubsRequest *)request handler:(void(^)(RPCHubGetAllHubsResponse *response, NSError *error))handler;


#pragma mark ValidateTitle(RPCHubValidateTitleRequest) returns (RPCHubValidateTitleResponse)

- (void)validateTitleWithRequest:(RPCHubValidateTitleRequest *)request handler:(void(^)(RPCHubValidateTitleResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToValidateTitleWithRequest:(RPCHubValidateTitleRequest *)request handler:(void(^)(RPCHubValidateTitleResponse *response, NSError *error))handler;


#pragma mark AddMember(RPCHubAddMemberRequest) returns (RPCHubAddMemberResponse)

- (void)addMemberWithRequest:(RPCHubAddMemberRequest *)request handler:(void(^)(RPCHubAddMemberResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToAddMemberWithRequest:(RPCHubAddMemberRequest *)request handler:(void(^)(RPCHubAddMemberResponse *response, NSError *error))handler;


#pragma mark EditMember(RPCHubEditMemberRequest) returns (RPCHubEditMemberResponse)

- (void)editMemberWithRequest:(RPCHubEditMemberRequest *)request handler:(void(^)(RPCHubEditMemberResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToEditMemberWithRequest:(RPCHubEditMemberRequest *)request handler:(void(^)(RPCHubEditMemberResponse *response, NSError *error))handler;


#pragma mark GetMembers(RPCHubGetMembersRequest) returns (RPCHubGetMembersResponse)

- (void)getMembersWithRequest:(RPCHubGetMembersRequest *)request handler:(void(^)(RPCHubGetMembersResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetMembersWithRequest:(RPCHubGetMembersRequest *)request handler:(void(^)(RPCHubGetMembersResponse *response, NSError *error))handler;


#pragma mark GetHubMember(RPCHubGetMemberRequest) returns (RPCHubGetMemberResponse)

- (void)getHubMemberWithRequest:(RPCHubGetMemberRequest *)request handler:(void(^)(RPCHubGetMemberResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetHubMemberWithRequest:(RPCHubGetMemberRequest *)request handler:(void(^)(RPCHubGetMemberResponse *response, NSError *error))handler;


#pragma mark AddExternalMember(RPCHubAddExternalMemberRequest) returns (RPCHubAddExternalMemberResponse)

- (void)addExternalMemberWithRequest:(RPCHubAddExternalMemberRequest *)request handler:(void(^)(RPCHubAddExternalMemberResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToAddExternalMemberWithRequest:(RPCHubAddExternalMemberRequest *)request handler:(void(^)(RPCHubAddExternalMemberResponse *response, NSError *error))handler;


#pragma mark EditExternalMember(RPCHubEditExternalMemberRequest) returns (RPCHubEditExternalMemberResponse)

- (void)editExternalMemberWithRequest:(RPCHubEditExternalMemberRequest *)request handler:(void(^)(RPCHubEditExternalMemberResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToEditExternalMemberWithRequest:(RPCHubEditExternalMemberRequest *)request handler:(void(^)(RPCHubEditExternalMemberResponse *response, NSError *error))handler;


#pragma mark GetExternalMembers(RPCHubGetExternalMembersRequest) returns (RPCHubGetExternalMembersResponse)

- (void)getExternalMembersWithRequest:(RPCHubGetExternalMembersRequest *)request handler:(void(^)(RPCHubGetExternalMembersResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetExternalMembersWithRequest:(RPCHubGetExternalMembersRequest *)request handler:(void(^)(RPCHubGetExternalMembersResponse *response, NSError *error))handler;


#pragma mark SendInvite(RPCHubSendInviteRequest) returns (RPCHubSendInviteResponse)

- (void)sendInviteWithRequest:(RPCHubSendInviteRequest *)request handler:(void(^)(RPCHubSendInviteResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToSendInviteWithRequest:(RPCHubSendInviteRequest *)request handler:(void(^)(RPCHubSendInviteResponse *response, NSError *error))handler;


#pragma mark RequestMembership(RPCHubRequestMembershipRequest) returns (RPCHubRequestMembershipResponse)

- (void)requestMembershipWithRequest:(RPCHubRequestMembershipRequest *)request handler:(void(^)(RPCHubRequestMembershipResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToRequestMembershipWithRequest:(RPCHubRequestMembershipRequest *)request handler:(void(^)(RPCHubRequestMembershipResponse *response, NSError *error))handler;


#pragma mark JoinHub(RPCHubJoinHubRequest) returns (RPCHubJoinHubResponse)

- (void)joinHubWithRequest:(RPCHubJoinHubRequest *)request handler:(void(^)(RPCHubJoinHubResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToJoinHubWithRequest:(RPCHubJoinHubRequest *)request handler:(void(^)(RPCHubJoinHubResponse *response, NSError *error))handler;


#pragma mark LeaveHub(RPCHubLeaveHubRequest) returns (RPCHubLeaveHubResponse)

- (void)leaveHubWithRequest:(RPCHubLeaveHubRequest *)request handler:(void(^)(RPCHubLeaveHubResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToLeaveHubWithRequest:(RPCHubLeaveHubRequest *)request handler:(void(^)(RPCHubLeaveHubResponse *response, NSError *error))handler;


#pragma mark LinkHub(RPCHubLinkHubRequest) returns (RPCHubLinkHubResponse)

- (void)linkHubWithRequest:(RPCHubLinkHubRequest *)request handler:(void(^)(RPCHubLinkHubResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToLinkHubWithRequest:(RPCHubLinkHubRequest *)request handler:(void(^)(RPCHubLinkHubResponse *response, NSError *error))handler;


#pragma mark UnlinkHub(RPCHubUnlinkHubRequest) returns (RPCHubUnlinkHubResponse)

- (void)unlinkHubWithRequest:(RPCHubUnlinkHubRequest *)request handler:(void(^)(RPCHubUnlinkHubResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToUnlinkHubWithRequest:(RPCHubUnlinkHubRequest *)request handler:(void(^)(RPCHubUnlinkHubResponse *response, NSError *error))handler;


#pragma mark RegisterExternalUserID(RPCHubRegisterExternalUserIDRequest) returns (RPCHubRegisterExternalUserIDResponse)

- (void)registerExternalUserIDWithRequest:(RPCHubRegisterExternalUserIDRequest *)request handler:(void(^)(RPCHubRegisterExternalUserIDResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToRegisterExternalUserIDWithRequest:(RPCHubRegisterExternalUserIDRequest *)request handler:(void(^)(RPCHubRegisterExternalUserIDResponse *response, NSError *error))handler;


@end

// Basic service implementation, over gRPC, that only does marshalling and parsing.
@interface HubService : ProtoService<HubService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
