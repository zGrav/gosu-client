// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: channel.proto

#import "GPBProtocolBuffers.h"

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30000
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

CF_EXTERN_C_BEGIN

@class Channel;
@class Game;
@class GameChannelListPage;
@class GameListPage;
@class Group;
@class OptionalBool;
@class OptionalInt64;
@class OptionalString;
@class User;
@class WebsocketMessage;
GPB_ENUM_FWD_DECLARE(Channel_ChannelType);
GPB_ENUM_FWD_DECLARE(ProprietaryUserGroupRecord_Type);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum ChannelInviteMemberResponse_ErrorType

typedef GPB_ENUM(ChannelInviteMemberResponse_ErrorType) {
  ChannelInviteMemberResponse_ErrorType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  ChannelInviteMemberResponse_ErrorType_None = 0,
  ChannelInviteMemberResponse_ErrorType_InvalidInput = 1,
  ChannelInviteMemberResponse_ErrorType_Forbidden = 2,
  ChannelInviteMemberResponse_ErrorType_UserAlreadyJoined = 3,
  ChannelInviteMemberResponse_ErrorType_Server = 4,
  ChannelInviteMemberResponse_ErrorType_UserNotAllowed = 5,
};

GPBEnumDescriptor *ChannelInviteMemberResponse_ErrorType_EnumDescriptor(void);

BOOL ChannelInviteMemberResponse_ErrorType_IsValidValue(int32_t value);

#pragma mark - Enum ChannelUpdateResponse_ErrorType

typedef GPB_ENUM(ChannelUpdateResponse_ErrorType) {
  ChannelUpdateResponse_ErrorType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  ChannelUpdateResponse_ErrorType_None = 0,
  ChannelUpdateResponse_ErrorType_Unknown = 1,
  ChannelUpdateResponse_ErrorType_UserBanned = 2,
  ChannelUpdateResponse_ErrorType_UserNotAMember = 3,
};

GPBEnumDescriptor *ChannelUpdateResponse_ErrorType_EnumDescriptor(void);

BOOL ChannelUpdateResponse_ErrorType_IsValidValue(int32_t value);

#pragma mark - Enum RPCChannelAddUsersToHubChannelResponse_ErrorType

typedef GPB_ENUM(RPCChannelAddUsersToHubChannelResponse_ErrorType) {
  RPCChannelAddUsersToHubChannelResponse_ErrorType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  RPCChannelAddUsersToHubChannelResponse_ErrorType_None = 0,
  RPCChannelAddUsersToHubChannelResponse_ErrorType_UnknownError = 1,
  RPCChannelAddUsersToHubChannelResponse_ErrorType_BadRequest = 2,
};

GPBEnumDescriptor *RPCChannelAddUsersToHubChannelResponse_ErrorType_EnumDescriptor(void);

BOOL RPCChannelAddUsersToHubChannelResponse_ErrorType_IsValidValue(int32_t value);

#pragma mark - Enum RPCChannelAddUserToHubChannelsResponse_ErrorType

typedef GPB_ENUM(RPCChannelAddUserToHubChannelsResponse_ErrorType) {
  RPCChannelAddUserToHubChannelsResponse_ErrorType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  RPCChannelAddUserToHubChannelsResponse_ErrorType_None = 0,
  RPCChannelAddUserToHubChannelsResponse_ErrorType_UnknownError = 1,
  RPCChannelAddUserToHubChannelsResponse_ErrorType_BadRequest = 2,
};

GPBEnumDescriptor *RPCChannelAddUserToHubChannelsResponse_ErrorType_EnumDescriptor(void);

BOOL RPCChannelAddUserToHubChannelsResponse_ErrorType_IsValidValue(int32_t value);

#pragma mark - ChannelRoot

@interface ChannelRoot : GPBRootObject

// The base class provides:
//   + (GPBExtensionRegistry *)extensionRegistry;
// which is an GPBExtensionRegistry that includes all the extensions defined by
// this file and all files that it depends on.

@end

#pragma mark - ChannelInfoResponse

typedef GPB_ENUM(ChannelInfoResponse_FieldNumber) {
  ChannelInfoResponse_FieldNumber_Channel = 1,
  ChannelInfoResponse_FieldNumber_Group = 2,
  ChannelInfoResponse_FieldNumber_Game = 3,
  ChannelInfoResponse_FieldNumber_IsJoinable = 4,
};

@interface ChannelInfoResponse : GPBMessage

@property(nonatomic, readwrite) BOOL hasChannel;
@property(nonatomic, readwrite, strong, null_resettable) Channel *channel;

@property(nonatomic, readwrite) BOOL hasGroup;
@property(nonatomic, readwrite, strong, null_resettable) Group *group;

@property(nonatomic, readwrite) BOOL hasGame;
@property(nonatomic, readwrite, strong, null_resettable) Game *game;

@property(nonatomic, readwrite) BOOL isJoinable;

@end

#pragma mark - EditChannelRequest

typedef GPB_ENUM(EditChannelRequest_FieldNumber) {
  EditChannelRequest_FieldNumber_Title = 1,
  EditChannelRequest_FieldNumber_Topic = 2,
  EditChannelRequest_FieldNumber_Visibility = 3,
};

@interface EditChannelRequest : GPBMessage

@property(nonatomic, readwrite) BOOL hasTitle;
@property(nonatomic, readwrite, strong, null_resettable) OptionalString *title;

@property(nonatomic, readwrite) BOOL hasTopic;
@property(nonatomic, readwrite, strong, null_resettable) OptionalString *topic;

@property(nonatomic, readwrite) BOOL hasVisibility;
@property(nonatomic, readwrite, strong, null_resettable) OptionalBool *visibility;

@end

#pragma mark - ChannelReadStatusResponseEntry

typedef GPB_ENUM(ChannelReadStatusResponseEntry_FieldNumber) {
  ChannelReadStatusResponseEntry_FieldNumber_ChannelId = 1,
  ChannelReadStatusResponseEntry_FieldNumber_Timestamp = 2,
  ChannelReadStatusResponseEntry_FieldNumber_LatestMessage = 3,
  ChannelReadStatusResponseEntry_FieldNumber_UnreadCount = 4,
  ChannelReadStatusResponseEntry_FieldNumber_UnreadMentionCount = 5,
};

@interface ChannelReadStatusResponseEntry : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *channelId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *timestamp;

@property(nonatomic, readwrite) BOOL hasLatestMessage;
@property(nonatomic, readwrite, strong, null_resettable) WebsocketMessage *latestMessage;

@property(nonatomic, readwrite) int32_t unreadCount;

@property(nonatomic, readwrite) int32_t unreadMentionCount;

@end

#pragma mark - ChannelReadStatusResponse

typedef GPB_ENUM(ChannelReadStatusResponse_FieldNumber) {
  ChannelReadStatusResponse_FieldNumber_ChannelsArray = 1,
};

@interface ChannelReadStatusResponse : GPBMessage

// |channelsArray| contains |ChannelReadStatusResponseEntry|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *channelsArray;
@property(nonatomic, readonly) NSUInteger channelsArray_Count;

@end

#pragma mark - ChannelKickBanRequest

typedef GPB_ENUM(ChannelKickBanRequest_FieldNumber) {
  ChannelKickBanRequest_FieldNumber_ChannelId = 1,
  ChannelKickBanRequest_FieldNumber_KickedId = 2,
  ChannelKickBanRequest_FieldNumber_Ban = 3,
  ChannelKickBanRequest_FieldNumber_BanDuration = 4,
};

@interface ChannelKickBanRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *channelId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *kickedId;

@property(nonatomic, readwrite) BOOL ban;

@property(nonatomic, readwrite) BOOL hasBanDuration;
@property(nonatomic, readwrite, strong, null_resettable) OptionalInt64 *banDuration;

@end

#pragma mark - ChannelKickBanResponse

@interface ChannelKickBanResponse : GPBMessage

@end

#pragma mark - ChannelUnBanRequest

typedef GPB_ENUM(ChannelUnBanRequest_FieldNumber) {
  ChannelUnBanRequest_FieldNumber_ChannelId = 1,
  ChannelUnBanRequest_FieldNumber_UnbannedId = 2,
};

@interface ChannelUnBanRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *channelId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *unbannedId;

@end

#pragma mark - ChannelUnBanResponse

@interface ChannelUnBanResponse : GPBMessage

@end

#pragma mark - ChannelJoinGameChannelRequest

typedef GPB_ENUM(ChannelJoinGameChannelRequest_FieldNumber) {
  ChannelJoinGameChannelRequest_FieldNumber_GameId = 1,
  ChannelJoinGameChannelRequest_FieldNumber_TagsArray = 2,
};

@interface ChannelJoinGameChannelRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *gameId;

// |tagsArray| contains |NSString|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *tagsArray;
@property(nonatomic, readonly) NSUInteger tagsArray_Count;

@end

#pragma mark - ChannelJoinGameChannelResponse

typedef GPB_ENUM(ChannelJoinGameChannelResponse_FieldNumber) {
  ChannelJoinGameChannelResponse_FieldNumber_Channel = 1,
};

@interface ChannelJoinGameChannelResponse : GPBMessage

@property(nonatomic, readwrite) BOOL hasChannel;
@property(nonatomic, readwrite, strong, null_resettable) Channel *channel;

@end

#pragma mark - ChannelCreateGroupChannelRequest

typedef GPB_ENUM(ChannelCreateGroupChannelRequest_FieldNumber) {
  ChannelCreateGroupChannelRequest_FieldNumber_GroupId = 1,
  ChannelCreateGroupChannelRequest_FieldNumber_Title = 2,
  ChannelCreateGroupChannelRequest_FieldNumber_Type = 3,
};

@interface ChannelCreateGroupChannelRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *groupId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *title;

@property(nonatomic, readwrite) enum Channel_ChannelType type;

@end

int32_t ChannelCreateGroupChannelRequest_Type_RawValue(ChannelCreateGroupChannelRequest *message);
void SetChannelCreateGroupChannelRequest_Type_RawValue(ChannelCreateGroupChannelRequest *message, int32_t value);

#pragma mark - ChannelCreateGroupChannelResponse

typedef GPB_ENUM(ChannelCreateGroupChannelResponse_FieldNumber) {
  ChannelCreateGroupChannelResponse_FieldNumber_User = 1,
  ChannelCreateGroupChannelResponse_FieldNumber_Channel = 2,
};

@interface ChannelCreateGroupChannelResponse : GPBMessage

@property(nonatomic, readwrite) BOOL hasUser;
@property(nonatomic, readwrite, strong, null_resettable) User *user;

@property(nonatomic, readwrite) BOOL hasChannel;
@property(nonatomic, readwrite, strong, null_resettable) Channel *channel;

@end

#pragma mark - ChannelInviteMemberRequest

typedef GPB_ENUM(ChannelInviteMemberRequest_FieldNumber) {
  ChannelInviteMemberRequest_FieldNumber_ChannelId = 1,
  ChannelInviteMemberRequest_FieldNumber_UserId = 2,
};

@interface ChannelInviteMemberRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *channelId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *userId;

@end

#pragma mark - ChannelInviteMemberResponse

typedef GPB_ENUM(ChannelInviteMemberResponse_FieldNumber) {
  ChannelInviteMemberResponse_FieldNumber_Error = 1,
};

@interface ChannelInviteMemberResponse : GPBMessage

@property(nonatomic, readwrite) ChannelInviteMemberResponse_ErrorType error;

@end

int32_t ChannelInviteMemberResponse_Error_RawValue(ChannelInviteMemberResponse *message);
void SetChannelInviteMemberResponse_Error_RawValue(ChannelInviteMemberResponse *message, int32_t value);

#pragma mark - GameResponse

typedef GPB_ENUM(GameResponse_FieldNumber) {
  GameResponse_FieldNumber_Game = 1,
  GameResponse_FieldNumber_ChannelsArray = 2,
};

@interface GameResponse : GPBMessage

@property(nonatomic, readwrite) BOOL hasGame;
@property(nonatomic, readwrite, strong, null_resettable) Game *game;

// |channelsArray| contains |Channel|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *channelsArray;
@property(nonatomic, readonly) NSUInteger channelsArray_Count;

@end

#pragma mark - RPCJoinProprietaryChannelsRequest

typedef GPB_ENUM(RPCJoinProprietaryChannelsRequest_FieldNumber) {
  RPCJoinProprietaryChannelsRequest_FieldNumber_UserId = 1,
  RPCJoinProprietaryChannelsRequest_FieldNumber_Type = 2,
};

@interface RPCJoinProprietaryChannelsRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *userId;

@property(nonatomic, readwrite) enum ProprietaryUserGroupRecord_Type type;

@end

int32_t RPCJoinProprietaryChannelsRequest_Type_RawValue(RPCJoinProprietaryChannelsRequest *message);
void SetRPCJoinProprietaryChannelsRequest_Type_RawValue(RPCJoinProprietaryChannelsRequest *message, int32_t value);

#pragma mark - RPCJoinProprietaryChannelsResponse

// VOID
@interface RPCJoinProprietaryChannelsResponse : GPBMessage

@end

#pragma mark - RPCJoinChannelInfoRequest

typedef GPB_ENUM(RPCJoinChannelInfoRequest_FieldNumber) {
  RPCJoinChannelInfoRequest_FieldNumber_UserId = 1,
  RPCJoinChannelInfoRequest_FieldNumber_Channel = 2,
  RPCJoinChannelInfoRequest_FieldNumber_Invite = 3,
};

@interface RPCJoinChannelInfoRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *userId;

@property(nonatomic, readwrite) BOOL hasChannel;
@property(nonatomic, readwrite, strong, null_resettable) Channel *channel;

@property(nonatomic, readwrite, copy, null_resettable) NSString *invite;

@end

#pragma mark - RPCJoinChannelInfoResponse

typedef GPB_ENUM(RPCJoinChannelInfoResponse_FieldNumber) {
  RPCJoinChannelInfoResponse_FieldNumber_IsJoinable = 1,
};

@interface RPCJoinChannelInfoResponse : GPBMessage

@property(nonatomic, readwrite) BOOL isJoinable;

@end

#pragma mark - RPCDeleteChannelRequest

typedef GPB_ENUM(RPCDeleteChannelRequest_FieldNumber) {
  RPCDeleteChannelRequest_FieldNumber_UserId = 1,
  RPCDeleteChannelRequest_FieldNumber_ChannelId = 2,
};

@interface RPCDeleteChannelRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *userId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *channelId;

@end

#pragma mark - RPCDeleteChannelResponse

// VOID
@interface RPCDeleteChannelResponse : GPBMessage

@end

#pragma mark - RPCEditChannelRequest

typedef GPB_ENUM(RPCEditChannelRequest_FieldNumber) {
  RPCEditChannelRequest_FieldNumber_UserId = 1,
  RPCEditChannelRequest_FieldNumber_ChannelId = 2,
  RPCEditChannelRequest_FieldNumber_Title = 3,
  RPCEditChannelRequest_FieldNumber_Topic = 4,
  RPCEditChannelRequest_FieldNumber_Visibility = 5,
};

@interface RPCEditChannelRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *userId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *channelId;

@property(nonatomic, readwrite) BOOL hasTitle;
@property(nonatomic, readwrite, strong, null_resettable) OptionalString *title;

@property(nonatomic, readwrite) BOOL hasTopic;
@property(nonatomic, readwrite, strong, null_resettable) OptionalString *topic;

@property(nonatomic, readwrite) BOOL hasVisibility;
@property(nonatomic, readwrite, strong, null_resettable) OptionalBool *visibility;

@end

#pragma mark - RPCEditChannelResponse

typedef GPB_ENUM(RPCEditChannelResponse_FieldNumber) {
  RPCEditChannelResponse_FieldNumber_Channel = 1,
  RPCEditChannelResponse_FieldNumber_TitleUpdated = 2,
  RPCEditChannelResponse_FieldNumber_TopicUpdated = 3,
  RPCEditChannelResponse_FieldNumber_VisibilityUpdated = 4,
};

@interface RPCEditChannelResponse : GPBMessage

@property(nonatomic, readwrite) BOOL hasChannel;
@property(nonatomic, readwrite, strong, null_resettable) Channel *channel;

@property(nonatomic, readwrite) BOOL titleUpdated;

@property(nonatomic, readwrite) BOOL topicUpdated;

@property(nonatomic, readwrite) BOOL visibilityUpdated;

@end

#pragma mark - RPCChannelCreateGroupChannelRequest

typedef GPB_ENUM(RPCChannelCreateGroupChannelRequest_FieldNumber) {
  RPCChannelCreateGroupChannelRequest_FieldNumber_UserId = 1,
  RPCChannelCreateGroupChannelRequest_FieldNumber_GroupId = 2,
  RPCChannelCreateGroupChannelRequest_FieldNumber_Title = 3,
  RPCChannelCreateGroupChannelRequest_FieldNumber_Type = 4,
};

@interface RPCChannelCreateGroupChannelRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *userId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *groupId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *title;

@property(nonatomic, readwrite) enum Channel_ChannelType type;

@end

int32_t RPCChannelCreateGroupChannelRequest_Type_RawValue(RPCChannelCreateGroupChannelRequest *message);
void SetRPCChannelCreateGroupChannelRequest_Type_RawValue(RPCChannelCreateGroupChannelRequest *message, int32_t value);

#pragma mark - RPCChannelCreateGroupChannelResponse

typedef GPB_ENUM(RPCChannelCreateGroupChannelResponse_FieldNumber) {
  RPCChannelCreateGroupChannelResponse_FieldNumber_User = 1,
  RPCChannelCreateGroupChannelResponse_FieldNumber_Channel = 2,
};

@interface RPCChannelCreateGroupChannelResponse : GPBMessage

@property(nonatomic, readwrite) BOOL hasUser;
@property(nonatomic, readwrite, strong, null_resettable) User *user;

@property(nonatomic, readwrite) BOOL hasChannel;
@property(nonatomic, readwrite, strong, null_resettable) Channel *channel;

@end

#pragma mark - RPCChannelCreateChannelRequest

typedef GPB_ENUM(RPCChannelCreateChannelRequest_FieldNumber) {
  RPCChannelCreateChannelRequest_FieldNumber_Title = 1,
  RPCChannelCreateChannelRequest_FieldNumber_Type = 2,
  RPCChannelCreateChannelRequest_FieldNumber_GroupId = 3,
};

@interface RPCChannelCreateChannelRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *title;

@property(nonatomic, readwrite) enum Channel_ChannelType type;

@property(nonatomic, readwrite, copy, null_resettable) NSString *groupId;

@end

int32_t RPCChannelCreateChannelRequest_Type_RawValue(RPCChannelCreateChannelRequest *message);
void SetRPCChannelCreateChannelRequest_Type_RawValue(RPCChannelCreateChannelRequest *message, int32_t value);

#pragma mark - RPCChannelCreateChannelResponse

typedef GPB_ENUM(RPCChannelCreateChannelResponse_FieldNumber) {
  RPCChannelCreateChannelResponse_FieldNumber_Channel = 1,
};

@interface RPCChannelCreateChannelResponse : GPBMessage

@property(nonatomic, readwrite) BOOL hasChannel;
@property(nonatomic, readwrite, strong, null_resettable) Channel *channel;

@end

#pragma mark - RPCExtendedChannelInfoResponse

typedef GPB_ENUM(RPCExtendedChannelInfoResponse_FieldNumber) {
  RPCExtendedChannelInfoResponse_FieldNumber_Channel = 1,
  RPCExtendedChannelInfoResponse_FieldNumber_Group = 2,
  RPCExtendedChannelInfoResponse_FieldNumber_Game = 3,
};

@interface RPCExtendedChannelInfoResponse : GPBMessage

@property(nonatomic, readwrite) BOOL hasChannel;
@property(nonatomic, readwrite, strong, null_resettable) Channel *channel;

@property(nonatomic, readwrite) BOOL hasGroup;
@property(nonatomic, readwrite, strong, null_resettable) Group *group;

@property(nonatomic, readwrite) BOOL hasGame;
@property(nonatomic, readwrite, strong, null_resettable) Game *game;

@end

#pragma mark - ChannelUpdateRequest

typedef GPB_ENUM(ChannelUpdateRequest_FieldNumber) {
  ChannelUpdateRequest_FieldNumber_ChannelId = 1,
  ChannelUpdateRequest_FieldNumber_UserId = 2,
  ChannelUpdateRequest_FieldNumber_Invite = 3,
  ChannelUpdateRequest_FieldNumber_Force = 4,
};

@interface ChannelUpdateRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *channelId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *userId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *invite;

// enforce, ignoring access rights
@property(nonatomic, readwrite) BOOL force;

@end

#pragma mark - ChannelUpdateResponse

typedef GPB_ENUM(ChannelUpdateResponse_FieldNumber) {
  ChannelUpdateResponse_FieldNumber_Error = 1,
  ChannelUpdateResponse_FieldNumber_User = 2,
};

@interface ChannelUpdateResponse : GPBMessage

@property(nonatomic, readwrite) ChannelUpdateResponse_ErrorType error;

@property(nonatomic, readwrite) BOOL hasUser;
@property(nonatomic, readwrite, strong, null_resettable) User *user;

@end

int32_t ChannelUpdateResponse_Error_RawValue(ChannelUpdateResponse *message);
void SetChannelUpdateResponse_Error_RawValue(ChannelUpdateResponse *message, int32_t value);

#pragma mark - RPCChannelAddUsersToHubChannelRequest

typedef GPB_ENUM(RPCChannelAddUsersToHubChannelRequest_FieldNumber) {
  RPCChannelAddUsersToHubChannelRequest_FieldNumber_ChannelId = 1,
  RPCChannelAddUsersToHubChannelRequest_FieldNumber_HubId = 2,
  RPCChannelAddUsersToHubChannelRequest_FieldNumber_UserIdsArray = 3,
  RPCChannelAddUsersToHubChannelRequest_FieldNumber_Remove = 4,
};

@interface RPCChannelAddUsersToHubChannelRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *channelId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *hubId;

// |userIdsArray| contains |NSString|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *userIdsArray;
@property(nonatomic, readonly) NSUInteger userIdsArray_Count;

@property(nonatomic, readwrite) BOOL remove;

@end

#pragma mark - RPCChannelAddUsersToHubChannelResponse

typedef GPB_ENUM(RPCChannelAddUsersToHubChannelResponse_FieldNumber) {
  RPCChannelAddUsersToHubChannelResponse_FieldNumber_Error = 1,
};

@interface RPCChannelAddUsersToHubChannelResponse : GPBMessage

@property(nonatomic, readwrite) RPCChannelAddUsersToHubChannelResponse_ErrorType error;

@end

int32_t RPCChannelAddUsersToHubChannelResponse_Error_RawValue(RPCChannelAddUsersToHubChannelResponse *message);
void SetRPCChannelAddUsersToHubChannelResponse_Error_RawValue(RPCChannelAddUsersToHubChannelResponse *message, int32_t value);

#pragma mark - RPCChannelAddUserToHubChannelsRequest

typedef GPB_ENUM(RPCChannelAddUserToHubChannelsRequest_FieldNumber) {
  RPCChannelAddUserToHubChannelsRequest_FieldNumber_ChannelIdsArray = 1,
  RPCChannelAddUserToHubChannelsRequest_FieldNumber_UserId = 2,
  RPCChannelAddUserToHubChannelsRequest_FieldNumber_Remove = 3,
};

@interface RPCChannelAddUserToHubChannelsRequest : GPBMessage

// |channelIdsArray| contains |NSString|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *channelIdsArray;
@property(nonatomic, readonly) NSUInteger channelIdsArray_Count;

@property(nonatomic, readwrite, copy, null_resettable) NSString *userId;

@property(nonatomic, readwrite) BOOL remove;

@end

#pragma mark - RPCChannelAddUserToHubChannelsResponse

typedef GPB_ENUM(RPCChannelAddUserToHubChannelsResponse_FieldNumber) {
  RPCChannelAddUserToHubChannelsResponse_FieldNumber_Error = 1,
};

@interface RPCChannelAddUserToHubChannelsResponse : GPBMessage

@property(nonatomic, readwrite) RPCChannelAddUserToHubChannelsResponse_ErrorType error;

@end

int32_t RPCChannelAddUserToHubChannelsResponse_Error_RawValue(RPCChannelAddUserToHubChannelsResponse *message);
void SetRPCChannelAddUserToHubChannelsResponse_Error_RawValue(RPCChannelAddUserToHubChannelsResponse *message, int32_t value);

#pragma mark - RPCChannelGetChannelRequest

typedef GPB_ENUM(RPCChannelGetChannelRequest_FieldNumber) {
  RPCChannelGetChannelRequest_FieldNumber_ChannelId = 1,
};

@interface RPCChannelGetChannelRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *channelId;

@end

#pragma mark - RPCChannelGetChannelResponse

typedef GPB_ENUM(RPCChannelGetChannelResponse_FieldNumber) {
  RPCChannelGetChannelResponse_FieldNumber_Channel = 1,
};

@interface RPCChannelGetChannelResponse : GPBMessage

@property(nonatomic, readwrite) BOOL hasChannel;
@property(nonatomic, readwrite, strong, null_resettable) Channel *channel;

@end

#pragma mark - RPCChannelJoinGameChannelRequest

typedef GPB_ENUM(RPCChannelJoinGameChannelRequest_FieldNumber) {
  RPCChannelJoinGameChannelRequest_FieldNumber_UserId = 1,
  RPCChannelJoinGameChannelRequest_FieldNumber_GameId = 2,
  RPCChannelJoinGameChannelRequest_FieldNumber_TagsArray = 3,
};

@interface RPCChannelJoinGameChannelRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *userId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *gameId;

// |tagsArray| contains |NSString|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *tagsArray;
@property(nonatomic, readonly) NSUInteger tagsArray_Count;

@end

#pragma mark - RPCChannelJoinGameChannelResponse

typedef GPB_ENUM(RPCChannelJoinGameChannelResponse_FieldNumber) {
  RPCChannelJoinGameChannelResponse_FieldNumber_Channel = 1,
};

@interface RPCChannelJoinGameChannelResponse : GPBMessage

@property(nonatomic, readwrite) BOOL hasChannel;
@property(nonatomic, readwrite, strong, null_resettable) Channel *channel;

@end

#pragma mark - RPCChannelKickBanRequest

typedef GPB_ENUM(RPCChannelKickBanRequest_FieldNumber) {
  RPCChannelKickBanRequest_FieldNumber_ChannelId = 1,
  RPCChannelKickBanRequest_FieldNumber_KickerId = 2,
  RPCChannelKickBanRequest_FieldNumber_KickedId = 3,
  RPCChannelKickBanRequest_FieldNumber_Ban = 4,
  RPCChannelKickBanRequest_FieldNumber_BanDuration = 5,
};

@interface RPCChannelKickBanRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *channelId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *kickerId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *kickedId;

@property(nonatomic, readwrite) BOOL ban;

@property(nonatomic, readwrite) BOOL hasBanDuration;
@property(nonatomic, readwrite, strong, null_resettable) OptionalInt64 *banDuration;

@end

#pragma mark - RPCChannelKickBanResponse

@interface RPCChannelKickBanResponse : GPBMessage

@end

#pragma mark - RPCChannelUnBanRequest

typedef GPB_ENUM(RPCChannelUnBanRequest_FieldNumber) {
  RPCChannelUnBanRequest_FieldNumber_ChannelId = 1,
  RPCChannelUnBanRequest_FieldNumber_UnbannerId = 2,
  RPCChannelUnBanRequest_FieldNumber_UnbannedId = 3,
};

@interface RPCChannelUnBanRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *channelId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *unbannerId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *unbannedId;

@end

#pragma mark - RPCChannelUnBanResponse

@interface RPCChannelUnBanResponse : GPBMessage

@end

#pragma mark - RPCChannelGetChannelUsersRequest

typedef GPB_ENUM(RPCChannelGetChannelUsersRequest_FieldNumber) {
  RPCChannelGetChannelUsersRequest_FieldNumber_ChannelId = 1,
};

@interface RPCChannelGetChannelUsersRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *channelId;

@end

#pragma mark - RPCChannelGetChannelUsersResponse

typedef GPB_ENUM(RPCChannelGetChannelUsersResponse_FieldNumber) {
  RPCChannelGetChannelUsersResponse_FieldNumber_UsersArray = 1,
};

@interface RPCChannelGetChannelUsersResponse : GPBMessage

// |usersArray| contains |ChannelUser|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *usersArray;
@property(nonatomic, readonly) NSUInteger usersArray_Count;

@end

#pragma mark - RPCChannelUnhideChannelRequest

typedef GPB_ENUM(RPCChannelUnhideChannelRequest_FieldNumber) {
  RPCChannelUnhideChannelRequest_FieldNumber_UserIdsArray = 1,
  RPCChannelUnhideChannelRequest_FieldNumber_ChannelId = 2,
};

@interface RPCChannelUnhideChannelRequest : GPBMessage

// |userIdsArray| contains |NSString|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *userIdsArray;
@property(nonatomic, readonly) NSUInteger userIdsArray_Count;

@property(nonatomic, readwrite, copy, null_resettable) NSString *channelId;

@end

#pragma mark - RPCChannelUnhideChannelResponse

@interface RPCChannelUnhideChannelResponse : GPBMessage

@end

#pragma mark - RPCChannelInviteMemberRequest

typedef GPB_ENUM(RPCChannelInviteMemberRequest_FieldNumber) {
  RPCChannelInviteMemberRequest_FieldNumber_ChannelId = 1,
  RPCChannelInviteMemberRequest_FieldNumber_InviterId = 2,
  RPCChannelInviteMemberRequest_FieldNumber_InviteeId = 3,
};

@interface RPCChannelInviteMemberRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *channelId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *inviterId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *inviteeId;

@end

#pragma mark - RPCChannelInviteMemberResponse

typedef GPB_ENUM(RPCChannelInviteMemberResponse_FieldNumber) {
  RPCChannelInviteMemberResponse_FieldNumber_Error = 1,
};

@interface RPCChannelInviteMemberResponse : GPBMessage

@property(nonatomic, readwrite) ChannelInviteMemberResponse_ErrorType error;

@end

int32_t RPCChannelInviteMemberResponse_Error_RawValue(RPCChannelInviteMemberResponse *message);
void SetRPCChannelInviteMemberResponse_Error_RawValue(RPCChannelInviteMemberResponse *message, int32_t value);

#pragma mark - RPCGameGetGamesRequest

typedef GPB_ENUM(RPCGameGetGamesRequest_FieldNumber) {
  RPCGameGetGamesRequest_FieldNumber_CacheId = 1,
  RPCGameGetGamesRequest_FieldNumber_PageNumber = 2,
  RPCGameGetGamesRequest_FieldNumber_PageSize = 3,
};

@interface RPCGameGetGamesRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *cacheId;

@property(nonatomic, readwrite) int32_t pageNumber;

@property(nonatomic, readwrite) int32_t pageSize;

@end

#pragma mark - RPCGameGetGamesResponse

typedef GPB_ENUM(RPCGameGetGamesResponse_FieldNumber) {
  RPCGameGetGamesResponse_FieldNumber_Page = 1,
  RPCGameGetGamesResponse_FieldNumber_CacheId = 2,
};

@interface RPCGameGetGamesResponse : GPBMessage

@property(nonatomic, readwrite) BOOL hasPage;
@property(nonatomic, readwrite, strong, null_resettable) GameListPage *page;

@property(nonatomic, readwrite, copy, null_resettable) NSString *cacheId;

@end

#pragma mark - RPCGameGetGameChannelsRequest

typedef GPB_ENUM(RPCGameGetGameChannelsRequest_FieldNumber) {
  RPCGameGetGameChannelsRequest_FieldNumber_CacheId = 1,
  RPCGameGetGameChannelsRequest_FieldNumber_GameId = 2,
  RPCGameGetGameChannelsRequest_FieldNumber_PageNumber = 3,
  RPCGameGetGameChannelsRequest_FieldNumber_PageSize = 4,
};

@interface RPCGameGetGameChannelsRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *cacheId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *gameId;

@property(nonatomic, readwrite) int32_t pageNumber;

@property(nonatomic, readwrite) int32_t pageSize;

@end

#pragma mark - RPCGameGetGameChannelsResponse

typedef GPB_ENUM(RPCGameGetGameChannelsResponse_FieldNumber) {
  RPCGameGetGameChannelsResponse_FieldNumber_Page = 1,
  RPCGameGetGameChannelsResponse_FieldNumber_CacheId = 2,
};

@interface RPCGameGetGameChannelsResponse : GPBMessage

@property(nonatomic, readwrite) BOOL hasPage;
@property(nonatomic, readwrite, strong, null_resettable) GameChannelListPage *page;

@property(nonatomic, readwrite, copy, null_resettable) NSString *cacheId;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

// @@protoc_insertion_point(global_scope)