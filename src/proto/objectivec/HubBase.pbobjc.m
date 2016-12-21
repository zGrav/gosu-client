// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: hub_base.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "HubBase.pbobjc.h"
 #import "Wrappers.pbobjc.h"
 #import "Optional.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - HubBaseRoot

@implementation HubBaseRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[GPBWrappersRoot extensionRegistry]];
    [registry addExtensions:[OptionalRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - HubBaseRoot_FileDescriptor

static GPBFileDescriptor *HubBaseRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"proto"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Hub

@implementation Hub

@dynamic id_p;
@dynamic parentIdsArray, parentIdsArray_Count;
@dynamic parentsArray, parentsArray_Count;
@dynamic translationIdsArray, translationIdsArray_Count;
@dynamic translationsArray, translationsArray_Count;
@dynamic ownerId;
@dynamic closed;
@dynamic title;
@dynamic shortTitle;
@dynamic slug;
@dynamic description_p;
@dynamic titleImage;
@dynamic backgroundImage;
@dynamic claimedGroupId;
@dynamic language;
@dynamic nsfw;
@dynamic channelId;
@dynamic createdAt;
@dynamic updatedAt;
@dynamic normalizedTitle;
@dynamic normalizedShortTitle;
@dynamic onlineUserCount;
@dynamic wordfilterEnabled;
@dynamic wordfilterList;
@dynamic linkwhitelistEnabled;
@dynamic linkwhitelistList;
@dynamic hasGeoLocation, geoLocation;
@dynamic totalUserCount;
@dynamic latestMessageTimestamp;
@dynamic topic;
@dynamic maxMessageLength;
@dynamic maxMessagesPerMinute;
@dynamic maxMessageLengthEphemeral;
@dynamic maxMessagesPerMinuteEphemeral;

typedef struct Hub__storage_ {
  uint32_t _has_storage_[2];
  int32_t maxMessageLength;
  int32_t maxMessagesPerMinute;
  int32_t maxMessageLengthEphemeral;
  int32_t maxMessagesPerMinuteEphemeral;
  NSString *id_p;
  NSMutableArray *parentIdsArray;
  NSMutableArray *parentsArray;
  NSMutableArray *translationIdsArray;
  NSMutableArray *translationsArray;
  NSString *ownerId;
  NSString *title;
  NSString *shortTitle;
  NSString *slug;
  NSString *description_p;
  NSString *titleImage;
  NSString *backgroundImage;
  NSString *claimedGroupId;
  NSString *language;
  NSString *channelId;
  NSString *normalizedTitle;
  NSString *normalizedShortTitle;
  NSString *wordfilterList;
  NSString *linkwhitelistList;
  GeoLocation *geoLocation;
  NSString *latestMessageTimestamp;
  NSString *topic;
  int64_t createdAt;
  int64_t updatedAt;
  int64_t onlineUserCount;
  int64_t totalUserCount;
} Hub__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Hub__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "parentIdsArray",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_ParentIdsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Hub__storage_, parentIdsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "parentsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(Hub),
        .number = Hub_FieldNumber_ParentsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Hub__storage_, parentsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "translationIdsArray",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_TranslationIdsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Hub__storage_, translationIdsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "translationsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(Hub),
        .number = Hub_FieldNumber_TranslationsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Hub__storage_, translationsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "ownerId",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_OwnerId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Hub__storage_, ownerId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "closed",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_Closed,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "title",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_Title,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(Hub__storage_, title),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shortTitle",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_ShortTitle,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(Hub__storage_, shortTitle),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "slug",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_Slug,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(Hub__storage_, slug),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "description_p",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_Description_p,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(Hub__storage_, description_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "titleImage",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_TitleImage,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(Hub__storage_, titleImage),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "backgroundImage",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_BackgroundImage,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(Hub__storage_, backgroundImage),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "claimedGroupId",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_ClaimedGroupId,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(Hub__storage_, claimedGroupId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "language",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_Language,
        .hasIndex = 11,
        .offset = (uint32_t)offsetof(Hub__storage_, language),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "nsfw",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_Nsfw,
        .hasIndex = 12,
        .offset = 13,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "channelId",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_ChannelId,
        .hasIndex = 14,
        .offset = (uint32_t)offsetof(Hub__storage_, channelId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "createdAt",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_CreatedAt,
        .hasIndex = 15,
        .offset = (uint32_t)offsetof(Hub__storage_, createdAt),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "updatedAt",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_UpdatedAt,
        .hasIndex = 16,
        .offset = (uint32_t)offsetof(Hub__storage_, updatedAt),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "normalizedTitle",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_NormalizedTitle,
        .hasIndex = 17,
        .offset = (uint32_t)offsetof(Hub__storage_, normalizedTitle),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "normalizedShortTitle",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_NormalizedShortTitle,
        .hasIndex = 18,
        .offset = (uint32_t)offsetof(Hub__storage_, normalizedShortTitle),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "onlineUserCount",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_OnlineUserCount,
        .hasIndex = 19,
        .offset = (uint32_t)offsetof(Hub__storage_, onlineUserCount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "wordfilterEnabled",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_WordfilterEnabled,
        .hasIndex = 20,
        .offset = 21,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "wordfilterList",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_WordfilterList,
        .hasIndex = 22,
        .offset = (uint32_t)offsetof(Hub__storage_, wordfilterList),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "linkwhitelistEnabled",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_LinkwhitelistEnabled,
        .hasIndex = 23,
        .offset = 24,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "linkwhitelistList",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_LinkwhitelistList,
        .hasIndex = 25,
        .offset = (uint32_t)offsetof(Hub__storage_, linkwhitelistList),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "geoLocation",
        .dataTypeSpecific.className = GPBStringifySymbol(GeoLocation),
        .number = Hub_FieldNumber_GeoLocation,
        .hasIndex = 26,
        .offset = (uint32_t)offsetof(Hub__storage_, geoLocation),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "totalUserCount",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_TotalUserCount,
        .hasIndex = 27,
        .offset = (uint32_t)offsetof(Hub__storage_, totalUserCount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "latestMessageTimestamp",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_LatestMessageTimestamp,
        .hasIndex = 28,
        .offset = (uint32_t)offsetof(Hub__storage_, latestMessageTimestamp),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "topic",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_Topic,
        .hasIndex = 29,
        .offset = (uint32_t)offsetof(Hub__storage_, topic),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "maxMessageLength",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_MaxMessageLength,
        .hasIndex = 30,
        .offset = (uint32_t)offsetof(Hub__storage_, maxMessageLength),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "maxMessagesPerMinute",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_MaxMessagesPerMinute,
        .hasIndex = 31,
        .offset = (uint32_t)offsetof(Hub__storage_, maxMessagesPerMinute),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "maxMessageLengthEphemeral",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_MaxMessageLengthEphemeral,
        .hasIndex = 32,
        .offset = (uint32_t)offsetof(Hub__storage_, maxMessageLengthEphemeral),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "maxMessagesPerMinuteEphemeral",
        .dataTypeSpecific.className = NULL,
        .number = Hub_FieldNumber_MaxMessagesPerMinuteEphemeral,
        .hasIndex = 33,
        .offset = (uint32_t)offsetof(Hub__storage_, maxMessagesPerMinuteEphemeral),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Hub class]
                                     rootClass:[HubBaseRoot class]
                                          file:HubBaseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Hub__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GeoLocation

@implementation GeoLocation

@dynamic lat;
@dynamic lng;

typedef struct GeoLocation__storage_ {
  uint32_t _has_storage_[1];
  float lat;
  float lng;
} GeoLocation__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "lat",
        .dataTypeSpecific.className = NULL,
        .number = GeoLocation_FieldNumber_Lat,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GeoLocation__storage_, lat),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "lng",
        .dataTypeSpecific.className = NULL,
        .number = GeoLocation_FieldNumber_Lng,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GeoLocation__storage_, lng),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GeoLocation class]
                                     rootClass:[HubBaseRoot class]
                                          file:HubBaseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GeoLocation__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - OptionalGeoLocation

@implementation OptionalGeoLocation

@dynamic hasValue, value;

typedef struct OptionalGeoLocation__storage_ {
  uint32_t _has_storage_[1];
  GeoLocation *value;
} OptionalGeoLocation__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = GPBStringifySymbol(GeoLocation),
        .number = OptionalGeoLocation_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(OptionalGeoLocation__storage_, value),
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[OptionalGeoLocation class]
                                     rootClass:[HubBaseRoot class]
                                          file:HubBaseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(OptionalGeoLocation__storage_)
                                         flags:0];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001E\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
