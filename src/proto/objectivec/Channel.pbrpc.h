#import "Channel.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Optional.pbobjc.h"
#import "Profile.pbobjc.h"
#import "Message.pbobjc.h"
#import "Wrappers.pbobjc.h"

@protocol ChannelService <NSObject>

#pragma mark CreateChannel(RPCChannelCreateChannelRequest) returns (RPCChannelCreateChannelResponse)

- (void)createChannelWithRequest:(RPCChannelCreateChannelRequest *)request handler:(void(^)(RPCChannelCreateChannelResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToCreateChannelWithRequest:(RPCChannelCreateChannelRequest *)request handler:(void(^)(RPCChannelCreateChannelResponse *response, NSError *error))handler;


#pragma mark JoinChannel(ChannelUpdateRequest) returns (ChannelUpdateResponse)

- (void)joinChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToJoinChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *response, NSError *error))handler;


#pragma mark LeaveChannel(ChannelUpdateRequest) returns (ChannelUpdateResponse)

- (void)leaveChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToLeaveChannelWithRequest:(ChannelUpdateRequest *)request handler:(void(^)(ChannelUpdateResponse *response, NSError *error))handler;


#pragma mark AddUsersToHubChannel(RPCChannelAddUsersToHubChannelRequest) returns (RPCChannelAddUsersToHubChannelResponse)

- (void)addUsersToHubChannelWithRequest:(RPCChannelAddUsersToHubChannelRequest *)request handler:(void(^)(RPCChannelAddUsersToHubChannelResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToAddUsersToHubChannelWithRequest:(RPCChannelAddUsersToHubChannelRequest *)request handler:(void(^)(RPCChannelAddUsersToHubChannelResponse *response, NSError *error))handler;


#pragma mark AddUserToHubChannels(RPCChannelAddUserToHubChannelsRequest) returns (RPCChannelAddUserToHubChannelsResponse)

- (void)addUserToHubChannelsWithRequest:(RPCChannelAddUserToHubChannelsRequest *)request handler:(void(^)(RPCChannelAddUserToHubChannelsResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToAddUserToHubChannelsWithRequest:(RPCChannelAddUserToHubChannelsRequest *)request handler:(void(^)(RPCChannelAddUserToHubChannelsResponse *response, NSError *error))handler;


#pragma mark GetChannel(RPCChannelGetChannelRequest) returns (RPCChannelGetChannelResponse)

- (void)getChannelWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCChannelGetChannelResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetChannelWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCChannelGetChannelResponse *response, NSError *error))handler;


#pragma mark JoinGameChannel(RPCChannelJoinGameChannelRequest) returns (RPCChannelJoinGameChannelResponse)

- (void)joinGameChannelWithRequest:(RPCChannelJoinGameChannelRequest *)request handler:(void(^)(RPCChannelJoinGameChannelResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToJoinGameChannelWithRequest:(RPCChannelJoinGameChannelRequest *)request handler:(void(^)(RPCChannelJoinGameChannelResponse *response, NSError *error))handler;


#pragma mark CreateGroupChannel(RPCChannelCreateGroupChannelRequest) returns (RPCChannelCreateGroupChannelResponse)

- (void)createGroupChannelWithRequest:(RPCChannelCreateGroupChannelRequest *)request handler:(void(^)(RPCChannelCreateGroupChannelResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToCreateGroupChannelWithRequest:(RPCChannelCreateGroupChannelRequest *)request handler:(void(^)(RPCChannelCreateGroupChannelResponse *response, NSError *error))handler;


#pragma mark KickBan(RPCChannelKickBanRequest) returns (RPCChannelKickBanResponse)

- (void)kickBanWithRequest:(RPCChannelKickBanRequest *)request handler:(void(^)(RPCChannelKickBanResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToKickBanWithRequest:(RPCChannelKickBanRequest *)request handler:(void(^)(RPCChannelKickBanResponse *response, NSError *error))handler;


#pragma mark UnBan(RPCChannelUnBanRequest) returns (RPCChannelUnBanResponse)

- (void)unBanWithRequest:(RPCChannelUnBanRequest *)request handler:(void(^)(RPCChannelUnBanResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToUnBanWithRequest:(RPCChannelUnBanRequest *)request handler:(void(^)(RPCChannelUnBanResponse *response, NSError *error))handler;


#pragma mark GetGame(StringValue) returns (GameResponse)

- (void)getGameWithRequest:(GPBStringValue *)request handler:(void(^)(GameResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetGameWithRequest:(GPBStringValue *)request handler:(void(^)(GameResponse *response, NSError *error))handler;


#pragma mark GetGames(RPCGameGetGamesRequest) returns (RPCGameGetGamesResponse)

- (void)getGamesWithRequest:(RPCGameGetGamesRequest *)request handler:(void(^)(RPCGameGetGamesResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetGamesWithRequest:(RPCGameGetGamesRequest *)request handler:(void(^)(RPCGameGetGamesResponse *response, NSError *error))handler;


#pragma mark GetGameChannels(RPCGameGetGameChannelsRequest) returns (RPCGameGetGameChannelsResponse)

- (void)getGameChannelsWithRequest:(RPCGameGetGameChannelsRequest *)request handler:(void(^)(RPCGameGetGameChannelsResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetGameChannelsWithRequest:(RPCGameGetGameChannelsRequest *)request handler:(void(^)(RPCGameGetGameChannelsResponse *response, NSError *error))handler;


#pragma mark GetChannelUsers(RPCChannelGetChannelUsersRequest) returns (RPCChannelGetChannelUsersResponse)

- (void)getChannelUsersWithRequest:(RPCChannelGetChannelUsersRequest *)request handler:(void(^)(RPCChannelGetChannelUsersResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetChannelUsersWithRequest:(RPCChannelGetChannelUsersRequest *)request handler:(void(^)(RPCChannelGetChannelUsersResponse *response, NSError *error))handler;


#pragma mark UnhideChannelIfNeeded(RPCChannelUnhideChannelRequest) returns (RPCChannelUnhideChannelResponse)

- (void)unhideChannelIfNeededWithRequest:(RPCChannelUnhideChannelRequest *)request handler:(void(^)(RPCChannelUnhideChannelResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToUnhideChannelIfNeededWithRequest:(RPCChannelUnhideChannelRequest *)request handler:(void(^)(RPCChannelUnhideChannelResponse *response, NSError *error))handler;


#pragma mark InviteMember(RPCChannelInviteMemberRequest) returns (RPCChannelInviteMemberResponse)

- (void)inviteMemberWithRequest:(RPCChannelInviteMemberRequest *)request handler:(void(^)(RPCChannelInviteMemberResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToInviteMemberWithRequest:(RPCChannelInviteMemberRequest *)request handler:(void(^)(RPCChannelInviteMemberResponse *response, NSError *error))handler;


#pragma mark EditChannel(RPCEditChannelRequest) returns (RPCEditChannelResponse)

- (void)editChannelWithRequest:(RPCEditChannelRequest *)request handler:(void(^)(RPCEditChannelResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToEditChannelWithRequest:(RPCEditChannelRequest *)request handler:(void(^)(RPCEditChannelResponse *response, NSError *error))handler;


#pragma mark DeleteChannel(RPCDeleteChannelRequest) returns (RPCDeleteChannelResponse)

- (void)deleteChannelWithRequest:(RPCDeleteChannelRequest *)request handler:(void(^)(RPCDeleteChannelResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToDeleteChannelWithRequest:(RPCDeleteChannelRequest *)request handler:(void(^)(RPCDeleteChannelResponse *response, NSError *error))handler;


#pragma mark CanJoinChannel(RPCJoinChannelInfoRequest) returns (RPCJoinChannelInfoResponse)

- (void)canJoinChannelWithRequest:(RPCJoinChannelInfoRequest *)request handler:(void(^)(RPCJoinChannelInfoResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToCanJoinChannelWithRequest:(RPCJoinChannelInfoRequest *)request handler:(void(^)(RPCJoinChannelInfoResponse *response, NSError *error))handler;


#pragma mark JoinProprietaryChannels(RPCJoinProprietaryChannelsRequest) returns (RPCJoinProprietaryChannelsResponse)

- (void)joinProprietaryChannelsWithRequest:(RPCJoinProprietaryChannelsRequest *)request handler:(void(^)(RPCJoinProprietaryChannelsResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToJoinProprietaryChannelsWithRequest:(RPCJoinProprietaryChannelsRequest *)request handler:(void(^)(RPCJoinProprietaryChannelsResponse *response, NSError *error))handler;


#pragma mark GetExtendedChannelInfo(RPCChannelGetChannelRequest) returns (RPCExtendedChannelInfoResponse)

- (void)getExtendedChannelInfoWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCExtendedChannelInfoResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetExtendedChannelInfoWithRequest:(RPCChannelGetChannelRequest *)request handler:(void(^)(RPCExtendedChannelInfoResponse *response, NSError *error))handler;


@end

// Basic service implementation, over gRPC, that only does marshalling and parsing.
@interface ChannelService : ProtoService<ChannelService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
