#import "Channel.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

static NSString *const kPackageName = @"proto";
static NSString *const kServiceName = @"ChannelService";

@implementation ChannelService

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


#pragma mark CreateChannel(RPCChannelCreateChannelRequest) returns (RPCChannelCreateChannelResponse)

- (void)createChannelWithRequest:(RPCChannelCreateChannelRequest *)request handler:(void(^)(RPCChannelCreateChannelResponse *response, NSError *error))handler{
  [[self RPCToCreateChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToCreateChannelWithRequest:(RPCChannelCreateChannelRequest *)request handler:(void(^)(RPCChannelCreateChannelResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"CreateChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelCreateChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark JoinChannel(ChannelUpdateRequest) returns (ChannelUpdateResponse)

- (void)joinChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *response, NSError *error))handler{
  [[self RPCToJoinChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToJoinChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"JoinChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ChannelUpdateResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark LeaveChannel(ChannelUpdateRequest) returns (ChannelUpdateResponse)

- (void)leaveChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *response, NSError *error))handler{
  [[self RPCToLeaveChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToLeaveChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"LeaveChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ChannelUpdateResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddUsersToHubChannel(RPCChannelAddUsersToHubChannelRequest) returns (RPCChannelAddUsersToHubChannelResponse)

- (void)addUsersToHubChannelWithRequest:(RPCChannelAddUsersToHubChannelRequest *)request handler:(void(^)(RPCChannelAddUsersToHubChannelResponse *response, NSError *error))handler{
  [[self RPCToAddUsersToHubChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToAddUsersToHubChannelWithRequest:(RPCChannelAddUsersToHubChannelRequest *)request handler:(void(^)(RPCChannelAddUsersToHubChannelResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"AddUsersToHubChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelAddUsersToHubChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddUserToHubChannels(RPCChannelAddUserToHubChannelsRequest) returns (RPCChannelAddUserToHubChannelsResponse)

- (void)addUserToHubChannelsWithRequest:(RPCChannelAddUserToHubChannelsRequest *)request handler:(void(^)(RPCChannelAddUserToHubChannelsResponse *response, NSError *error))handler{
  [[self RPCToAddUserToHubChannelsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToAddUserToHubChannelsWithRequest:(RPCChannelAddUserToHubChannelsRequest *)request handler:(void(^)(RPCChannelAddUserToHubChannelsResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"AddUserToHubChannels"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelAddUserToHubChannelsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetChannel(RPCChannelGetChannelRequest) returns (RPCChannelGetChannelResponse)

- (void)getChannelWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCChannelGetChannelResponse *response, NSError *error))handler{
  [[self RPCToGetChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetChannelWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCChannelGetChannelResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelGetChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark JoinGameChannel(RPCChannelJoinGameChannelRequest) returns (RPCChannelJoinGameChannelResponse)

- (void)joinGameChannelWithRequest:(RPCChannelJoinGameChannelRequest *)request handler:(void(^)(RPCChannelJoinGameChannelResponse *response, NSError *error))handler{
  [[self RPCToJoinGameChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToJoinGameChannelWithRequest:(RPCChannelJoinGameChannelRequest *)request handler:(void(^)(RPCChannelJoinGameChannelResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"JoinGameChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelJoinGameChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CreateGroupChannel(RPCChannelCreateGroupChannelRequest) returns (RPCChannelCreateGroupChannelResponse)

- (void)createGroupChannelWithRequest:(RPCChannelCreateGroupChannelRequest *)request handler:(void(^)(RPCChannelCreateGroupChannelResponse *response, NSError *error))handler{
  [[self RPCToCreateGroupChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToCreateGroupChannelWithRequest:(RPCChannelCreateGroupChannelRequest *)request handler:(void(^)(RPCChannelCreateGroupChannelResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"CreateGroupChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelCreateGroupChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark KickBan(RPCChannelKickBanRequest) returns (RPCChannelKickBanResponse)

- (void)kickBanWithRequest:(RPCChannelKickBanRequest *)request handler:(void(^)(RPCChannelKickBanResponse *response, NSError *error))handler{
  [[self RPCToKickBanWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToKickBanWithRequest:(RPCChannelKickBanRequest *)request handler:(void(^)(RPCChannelKickBanResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"KickBan"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelKickBanResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UnBan(RPCChannelUnBanRequest) returns (RPCChannelUnBanResponse)

- (void)unBanWithRequest:(RPCChannelUnBanRequest *)request handler:(void(^)(RPCChannelUnBanResponse *response, NSError *error))handler{
  [[self RPCToUnBanWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToUnBanWithRequest:(RPCChannelUnBanRequest *)request handler:(void(^)(RPCChannelUnBanResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"UnBan"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelUnBanResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetGame(StringValue) returns (GameResponse)

- (void)getGameWithRequest:(GPBStringValue *)request handler:(void(^)(GameResponse *response, NSError *error))handler{
  [[self RPCToGetGameWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetGameWithRequest:(GPBStringValue *)request handler:(void(^)(GameResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetGame"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GameResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetGames(RPCGameGetGamesRequest) returns (RPCGameGetGamesResponse)

- (void)getGamesWithRequest:(RPCGameGetGamesRequest *)request handler:(void(^)(RPCGameGetGamesResponse *response, NSError *error))handler{
  [[self RPCToGetGamesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetGamesWithRequest:(RPCGameGetGamesRequest *)request handler:(void(^)(RPCGameGetGamesResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetGames"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGameGetGamesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetGameChannels(RPCGameGetGameChannelsRequest) returns (RPCGameGetGameChannelsResponse)

- (void)getGameChannelsWithRequest:(RPCGameGetGameChannelsRequest *)request handler:(void(^)(RPCGameGetGameChannelsResponse *response, NSError *error))handler{
  [[self RPCToGetGameChannelsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetGameChannelsWithRequest:(RPCGameGetGameChannelsRequest *)request handler:(void(^)(RPCGameGetGameChannelsResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetGameChannels"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGameGetGameChannelsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetChannelUsers(RPCChannelGetChannelUsersRequest) returns (RPCChannelGetChannelUsersResponse)

- (void)getChannelUsersWithRequest:(RPCChannelGetChannelUsersRequest *)request handler:(void(^)(RPCChannelGetChannelUsersResponse *response, NSError *error))handler{
  [[self RPCToGetChannelUsersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetChannelUsersWithRequest:(RPCChannelGetChannelUsersRequest *)request handler:(void(^)(RPCChannelGetChannelUsersResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetChannelUsers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelGetChannelUsersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UnhideChannelIfNeeded(RPCChannelUnhideChannelRequest) returns (RPCChannelUnhideChannelResponse)

- (void)unhideChannelIfNeededWithRequest:(RPCChannelUnhideChannelRequest *)request handler:(void(^)(RPCChannelUnhideChannelResponse *response, NSError *error))handler{
  [[self RPCToUnhideChannelIfNeededWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToUnhideChannelIfNeededWithRequest:(RPCChannelUnhideChannelRequest *)request handler:(void(^)(RPCChannelUnhideChannelResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"UnhideChannelIfNeeded"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelUnhideChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark InviteMember(RPCChannelInviteMemberRequest) returns (RPCChannelInviteMemberResponse)

- (void)inviteMemberWithRequest:(RPCChannelInviteMemberRequest *)request handler:(void(^)(RPCChannelInviteMemberResponse *response, NSError *error))handler{
  [[self RPCToInviteMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToInviteMemberWithRequest:(RPCChannelInviteMemberRequest *)request handler:(void(^)(RPCChannelInviteMemberResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"InviteMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelInviteMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark EditChannel(RPCEditChannelRequest) returns (RPCEditChannelResponse)

- (void)editChannelWithRequest:(RPCEditChannelRequest *)request handler:(void(^)(RPCEditChannelResponse *response, NSError *error))handler{
  [[self RPCToEditChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToEditChannelWithRequest:(RPCEditChannelRequest *)request handler:(void(^)(RPCEditChannelResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"EditChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCEditChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteChannel(RPCDeleteChannelRequest) returns (RPCDeleteChannelResponse)

- (void)deleteChannelWithRequest:(RPCDeleteChannelRequest *)request handler:(void(^)(RPCDeleteChannelResponse *response, NSError *error))handler{
  [[self RPCToDeleteChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToDeleteChannelWithRequest:(RPCDeleteChannelRequest *)request handler:(void(^)(RPCDeleteChannelResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"DeleteChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCDeleteChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CanJoinChannel(RPCJoinChannelInfoRequest) returns (RPCJoinChannelInfoResponse)

- (void)canJoinChannelWithRequest:(RPCJoinChannelInfoRequest *)request handler:(void(^)(RPCJoinChannelInfoResponse *response, NSError *error))handler{
  [[self RPCToCanJoinChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToCanJoinChannelWithRequest:(RPCJoinChannelInfoRequest *)request handler:(void(^)(RPCJoinChannelInfoResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"CanJoinChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCJoinChannelInfoResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark JoinProprietaryChannels(RPCJoinProprietaryChannelsRequest) returns (RPCJoinProprietaryChannelsResponse)

- (void)joinProprietaryChannelsWithRequest:(RPCJoinProprietaryChannelsRequest *)request handler:(void(^)(RPCJoinProprietaryChannelsResponse *response, NSError *error))handler{
  [[self RPCToJoinProprietaryChannelsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToJoinProprietaryChannelsWithRequest:(RPCJoinProprietaryChannelsRequest *)request handler:(void(^)(RPCJoinProprietaryChannelsResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"JoinProprietaryChannels"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCJoinProprietaryChannelsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetExtendedChannelInfo(RPCChannelGetChannelRequest) returns (RPCExtendedChannelInfoResponse)

- (void)getExtendedChannelInfoWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCExtendedChannelInfoResponse *response, NSError *error))handler{
  [[self RPCToGetExtendedChannelInfoWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetExtendedChannelInfoWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCExtendedChannelInfoResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetExtendedChannelInfo"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCExtendedChannelInfoResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
