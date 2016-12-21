#import "Channel.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Optional.pbobjc.h"
#import "Profile.pbobjc.h"
#import "Message.pbobjc.h"
#import "Wrappers.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol ChannelService <NSObject>

#pragma mark CreateChannel(RPCChannelCreateChannelRequest) returns (RPCChannelCreateChannelResponse)

- (void)createChannelWithRequest:(RPCChannelCreateChannelRequest *)request handler:(void(^)(RPCChannelCreateChannelResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCreateChannelWithRequest:(RPCChannelCreateChannelRequest *)request handler:(void(^)(RPCChannelCreateChannelResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark JoinChannel(ChannelUpdateRequest) returns (ChannelUpdateResponse)

- (void)joinChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToJoinChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark LeaveChannel(ChannelUpdateRequest) returns (ChannelUpdateResponse)

- (void)leaveChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToLeaveChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AddUsersToHubChannel(RPCChannelAddUsersToHubChannelRequest) returns (RPCChannelAddUsersToHubChannelResponse)

- (void)addUsersToHubChannelWithRequest:(RPCChannelAddUsersToHubChannelRequest *)request handler:(void(^)(RPCChannelAddUsersToHubChannelResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddUsersToHubChannelWithRequest:(RPCChannelAddUsersToHubChannelRequest *)request handler:(void(^)(RPCChannelAddUsersToHubChannelResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AddUserToHubChannels(RPCChannelAddUserToHubChannelsRequest) returns (RPCChannelAddUserToHubChannelsResponse)

- (void)addUserToHubChannelsWithRequest:(RPCChannelAddUserToHubChannelsRequest *)request handler:(void(^)(RPCChannelAddUserToHubChannelsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddUserToHubChannelsWithRequest:(RPCChannelAddUserToHubChannelsRequest *)request handler:(void(^)(RPCChannelAddUserToHubChannelsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetChannel(RPCChannelGetChannelRequest) returns (RPCChannelGetChannelResponse)

- (void)getChannelWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCChannelGetChannelResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetChannelWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCChannelGetChannelResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark JoinGameChannel(RPCChannelJoinGameChannelRequest) returns (RPCChannelJoinGameChannelResponse)

- (void)joinGameChannelWithRequest:(RPCChannelJoinGameChannelRequest *)request handler:(void(^)(RPCChannelJoinGameChannelResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToJoinGameChannelWithRequest:(RPCChannelJoinGameChannelRequest *)request handler:(void(^)(RPCChannelJoinGameChannelResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CreateGroupChannel(RPCChannelCreateGroupChannelRequest) returns (RPCChannelCreateGroupChannelResponse)

- (void)createGroupChannelWithRequest:(RPCChannelCreateGroupChannelRequest *)request handler:(void(^)(RPCChannelCreateGroupChannelResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCreateGroupChannelWithRequest:(RPCChannelCreateGroupChannelRequest *)request handler:(void(^)(RPCChannelCreateGroupChannelResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark KickBan(RPCChannelKickBanRequest) returns (RPCChannelKickBanResponse)

- (void)kickBanWithRequest:(RPCChannelKickBanRequest *)request handler:(void(^)(RPCChannelKickBanResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToKickBanWithRequest:(RPCChannelKickBanRequest *)request handler:(void(^)(RPCChannelKickBanResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UnBan(RPCChannelUnBanRequest) returns (RPCChannelUnBanResponse)

- (void)unBanWithRequest:(RPCChannelUnBanRequest *)request handler:(void(^)(RPCChannelUnBanResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUnBanWithRequest:(RPCChannelUnBanRequest *)request handler:(void(^)(RPCChannelUnBanResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetGame(StringValue) returns (GameResponse)

- (void)getGameWithRequest:(GPBStringValue *)request handler:(void(^)(GameResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetGameWithRequest:(GPBStringValue *)request handler:(void(^)(GameResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetGames(RPCGameGetGamesRequest) returns (RPCGameGetGamesResponse)

- (void)getGamesWithRequest:(RPCGameGetGamesRequest *)request handler:(void(^)(RPCGameGetGamesResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetGamesWithRequest:(RPCGameGetGamesRequest *)request handler:(void(^)(RPCGameGetGamesResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetGameChannels(RPCGameGetGameChannelsRequest) returns (RPCGameGetGameChannelsResponse)

- (void)getGameChannelsWithRequest:(RPCGameGetGameChannelsRequest *)request handler:(void(^)(RPCGameGetGameChannelsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetGameChannelsWithRequest:(RPCGameGetGameChannelsRequest *)request handler:(void(^)(RPCGameGetGameChannelsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetChannelUsers(RPCChannelGetChannelUsersRequest) returns (RPCChannelGetChannelUsersResponse)

- (void)getChannelUsersWithRequest:(RPCChannelGetChannelUsersRequest *)request handler:(void(^)(RPCChannelGetChannelUsersResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetChannelUsersWithRequest:(RPCChannelGetChannelUsersRequest *)request handler:(void(^)(RPCChannelGetChannelUsersResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UnhideChannelIfNeeded(RPCChannelUnhideChannelRequest) returns (RPCChannelUnhideChannelResponse)

- (void)unhideChannelIfNeededWithRequest:(RPCChannelUnhideChannelRequest *)request handler:(void(^)(RPCChannelUnhideChannelResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUnhideChannelIfNeededWithRequest:(RPCChannelUnhideChannelRequest *)request handler:(void(^)(RPCChannelUnhideChannelResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark InviteMember(RPCChannelInviteMemberRequest) returns (RPCChannelInviteMemberResponse)

- (void)inviteMemberWithRequest:(RPCChannelInviteMemberRequest *)request handler:(void(^)(RPCChannelInviteMemberResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToInviteMemberWithRequest:(RPCChannelInviteMemberRequest *)request handler:(void(^)(RPCChannelInviteMemberResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark EditChannel(RPCEditChannelRequest) returns (RPCEditChannelResponse)

- (void)editChannelWithRequest:(RPCEditChannelRequest *)request handler:(void(^)(RPCEditChannelResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToEditChannelWithRequest:(RPCEditChannelRequest *)request handler:(void(^)(RPCEditChannelResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteChannel(RPCDeleteChannelRequest) returns (RPCDeleteChannelResponse)

- (void)deleteChannelWithRequest:(RPCDeleteChannelRequest *)request handler:(void(^)(RPCDeleteChannelResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteChannelWithRequest:(RPCDeleteChannelRequest *)request handler:(void(^)(RPCDeleteChannelResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CanJoinChannel(RPCJoinChannelInfoRequest) returns (RPCJoinChannelInfoResponse)

- (void)canJoinChannelWithRequest:(RPCJoinChannelInfoRequest *)request handler:(void(^)(RPCJoinChannelInfoResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCanJoinChannelWithRequest:(RPCJoinChannelInfoRequest *)request handler:(void(^)(RPCJoinChannelInfoResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark JoinProprietaryChannels(RPCJoinProprietaryChannelsRequest) returns (RPCJoinProprietaryChannelsResponse)

- (void)joinProprietaryChannelsWithRequest:(RPCJoinProprietaryChannelsRequest *)request handler:(void(^)(RPCJoinProprietaryChannelsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToJoinProprietaryChannelsWithRequest:(RPCJoinProprietaryChannelsRequest *)request handler:(void(^)(RPCJoinProprietaryChannelsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetExtendedChannelInfo(RPCChannelGetChannelRequest) returns (RPCExtendedChannelInfoResponse)

- (void)getExtendedChannelInfoWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCExtendedChannelInfoResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetExtendedChannelInfoWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCExtendedChannelInfoResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface ChannelService : GRPCProtoService<ChannelService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
