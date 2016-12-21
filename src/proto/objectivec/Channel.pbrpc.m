#import "Channel.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation ChannelService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"ChannelService"]);
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

- (void)createChannelWithRequest:(RPCChannelCreateChannelRequest *)request handler:(void(^)(RPCChannelCreateChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCreateChannelWithRequest:(RPCChannelCreateChannelRequest *)request handler:(void(^)(RPCChannelCreateChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelCreateChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark JoinChannel(ChannelUpdateRequest) returns (ChannelUpdateResponse)

- (void)joinChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToJoinChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToJoinChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"JoinChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ChannelUpdateResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark LeaveChannel(ChannelUpdateRequest) returns (ChannelUpdateResponse)

- (void)leaveChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToLeaveChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToLeaveChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"LeaveChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ChannelUpdateResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddUsersToHubChannel(RPCChannelAddUsersToHubChannelRequest) returns (RPCChannelAddUsersToHubChannelResponse)

- (void)addUsersToHubChannelWithRequest:(RPCChannelAddUsersToHubChannelRequest *)request handler:(void(^)(RPCChannelAddUsersToHubChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddUsersToHubChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddUsersToHubChannelWithRequest:(RPCChannelAddUsersToHubChannelRequest *)request handler:(void(^)(RPCChannelAddUsersToHubChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AddUsersToHubChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelAddUsersToHubChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddUserToHubChannels(RPCChannelAddUserToHubChannelsRequest) returns (RPCChannelAddUserToHubChannelsResponse)

- (void)addUserToHubChannelsWithRequest:(RPCChannelAddUserToHubChannelsRequest *)request handler:(void(^)(RPCChannelAddUserToHubChannelsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddUserToHubChannelsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddUserToHubChannelsWithRequest:(RPCChannelAddUserToHubChannelsRequest *)request handler:(void(^)(RPCChannelAddUserToHubChannelsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AddUserToHubChannels"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelAddUserToHubChannelsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetChannel(RPCChannelGetChannelRequest) returns (RPCChannelGetChannelResponse)

- (void)getChannelWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCChannelGetChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetChannelWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCChannelGetChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelGetChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark JoinGameChannel(RPCChannelJoinGameChannelRequest) returns (RPCChannelJoinGameChannelResponse)

- (void)joinGameChannelWithRequest:(RPCChannelJoinGameChannelRequest *)request handler:(void(^)(RPCChannelJoinGameChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToJoinGameChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToJoinGameChannelWithRequest:(RPCChannelJoinGameChannelRequest *)request handler:(void(^)(RPCChannelJoinGameChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"JoinGameChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelJoinGameChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CreateGroupChannel(RPCChannelCreateGroupChannelRequest) returns (RPCChannelCreateGroupChannelResponse)

- (void)createGroupChannelWithRequest:(RPCChannelCreateGroupChannelRequest *)request handler:(void(^)(RPCChannelCreateGroupChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateGroupChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCreateGroupChannelWithRequest:(RPCChannelCreateGroupChannelRequest *)request handler:(void(^)(RPCChannelCreateGroupChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateGroupChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelCreateGroupChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark KickBan(RPCChannelKickBanRequest) returns (RPCChannelKickBanResponse)

- (void)kickBanWithRequest:(RPCChannelKickBanRequest *)request handler:(void(^)(RPCChannelKickBanResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToKickBanWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToKickBanWithRequest:(RPCChannelKickBanRequest *)request handler:(void(^)(RPCChannelKickBanResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"KickBan"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelKickBanResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UnBan(RPCChannelUnBanRequest) returns (RPCChannelUnBanResponse)

- (void)unBanWithRequest:(RPCChannelUnBanRequest *)request handler:(void(^)(RPCChannelUnBanResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUnBanWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUnBanWithRequest:(RPCChannelUnBanRequest *)request handler:(void(^)(RPCChannelUnBanResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UnBan"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelUnBanResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetGame(StringValue) returns (GameResponse)

- (void)getGameWithRequest:(GPBStringValue *)request handler:(void(^)(GameResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetGameWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetGameWithRequest:(GPBStringValue *)request handler:(void(^)(GameResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetGame"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GameResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetGames(RPCGameGetGamesRequest) returns (RPCGameGetGamesResponse)

- (void)getGamesWithRequest:(RPCGameGetGamesRequest *)request handler:(void(^)(RPCGameGetGamesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetGamesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetGamesWithRequest:(RPCGameGetGamesRequest *)request handler:(void(^)(RPCGameGetGamesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetGames"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGameGetGamesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetGameChannels(RPCGameGetGameChannelsRequest) returns (RPCGameGetGameChannelsResponse)

- (void)getGameChannelsWithRequest:(RPCGameGetGameChannelsRequest *)request handler:(void(^)(RPCGameGetGameChannelsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetGameChannelsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetGameChannelsWithRequest:(RPCGameGetGameChannelsRequest *)request handler:(void(^)(RPCGameGetGameChannelsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetGameChannels"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCGameGetGameChannelsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetChannelUsers(RPCChannelGetChannelUsersRequest) returns (RPCChannelGetChannelUsersResponse)

- (void)getChannelUsersWithRequest:(RPCChannelGetChannelUsersRequest *)request handler:(void(^)(RPCChannelGetChannelUsersResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetChannelUsersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetChannelUsersWithRequest:(RPCChannelGetChannelUsersRequest *)request handler:(void(^)(RPCChannelGetChannelUsersResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetChannelUsers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelGetChannelUsersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UnhideChannelIfNeeded(RPCChannelUnhideChannelRequest) returns (RPCChannelUnhideChannelResponse)

- (void)unhideChannelIfNeededWithRequest:(RPCChannelUnhideChannelRequest *)request handler:(void(^)(RPCChannelUnhideChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUnhideChannelIfNeededWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUnhideChannelIfNeededWithRequest:(RPCChannelUnhideChannelRequest *)request handler:(void(^)(RPCChannelUnhideChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UnhideChannelIfNeeded"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelUnhideChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark InviteMember(RPCChannelInviteMemberRequest) returns (RPCChannelInviteMemberResponse)

- (void)inviteMemberWithRequest:(RPCChannelInviteMemberRequest *)request handler:(void(^)(RPCChannelInviteMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToInviteMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToInviteMemberWithRequest:(RPCChannelInviteMemberRequest *)request handler:(void(^)(RPCChannelInviteMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"InviteMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCChannelInviteMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark EditChannel(RPCEditChannelRequest) returns (RPCEditChannelResponse)

- (void)editChannelWithRequest:(RPCEditChannelRequest *)request handler:(void(^)(RPCEditChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToEditChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToEditChannelWithRequest:(RPCEditChannelRequest *)request handler:(void(^)(RPCEditChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"EditChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCEditChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteChannel(RPCDeleteChannelRequest) returns (RPCDeleteChannelResponse)

- (void)deleteChannelWithRequest:(RPCDeleteChannelRequest *)request handler:(void(^)(RPCDeleteChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeleteChannelWithRequest:(RPCDeleteChannelRequest *)request handler:(void(^)(RPCDeleteChannelResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCDeleteChannelResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CanJoinChannel(RPCJoinChannelInfoRequest) returns (RPCJoinChannelInfoResponse)

- (void)canJoinChannelWithRequest:(RPCJoinChannelInfoRequest *)request handler:(void(^)(RPCJoinChannelInfoResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCanJoinChannelWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCanJoinChannelWithRequest:(RPCJoinChannelInfoRequest *)request handler:(void(^)(RPCJoinChannelInfoResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CanJoinChannel"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCJoinChannelInfoResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark JoinProprietaryChannels(RPCJoinProprietaryChannelsRequest) returns (RPCJoinProprietaryChannelsResponse)

- (void)joinProprietaryChannelsWithRequest:(RPCJoinProprietaryChannelsRequest *)request handler:(void(^)(RPCJoinProprietaryChannelsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToJoinProprietaryChannelsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToJoinProprietaryChannelsWithRequest:(RPCJoinProprietaryChannelsRequest *)request handler:(void(^)(RPCJoinProprietaryChannelsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"JoinProprietaryChannels"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCJoinProprietaryChannelsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetExtendedChannelInfo(RPCChannelGetChannelRequest) returns (RPCExtendedChannelInfoResponse)

- (void)getExtendedChannelInfoWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCExtendedChannelInfoResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetExtendedChannelInfoWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetExtendedChannelInfoWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCExtendedChannelInfoResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetExtendedChannelInfo"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCExtendedChannelInfoResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
