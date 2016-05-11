// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: push.proto

#import "GPBProtocolBuffers.h"

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30000
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

CF_EXTERN_C_BEGIN

NS_ASSUME_NONNULL_BEGIN

#pragma mark - PushRoot

@interface PushRoot : GPBRootObject

// The base class provides:
//   + (GPBExtensionRegistry *)extensionRegistry;
// which is an GPBExtensionRegistry that includes all the extensions defined by
// this file and all files that it depends on.

@end

#pragma mark - PushRegisterRequest

typedef GPB_ENUM(PushRegisterRequest_FieldNumber) {
  PushRegisterRequest_FieldNumber_UserId = 1,
  PushRegisterRequest_FieldNumber_AgentId = 2,
  PushRegisterRequest_FieldNumber_Token = 3,
  PushRegisterRequest_FieldNumber_Provider = 4,
  PushRegisterRequest_FieldNumber_Language = 5,
};

@interface PushRegisterRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *userId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *agentId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *token;

@property(nonatomic, readwrite, copy, null_resettable) NSString *provider;

@property(nonatomic, readwrite, copy, null_resettable) NSString *language;

@end

#pragma mark - PushRegisterResponse

typedef GPB_ENUM(PushRegisterResponse_FieldNumber) {
  PushRegisterResponse_FieldNumber_UserId = 1,
  PushRegisterResponse_FieldNumber_AgentId = 2,
  PushRegisterResponse_FieldNumber_Token = 3,
  PushRegisterResponse_FieldNumber_Provider = 4,
  PushRegisterResponse_FieldNumber_SubscriberId = 5,
};

@interface PushRegisterResponse : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *userId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *agentId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *token;

@property(nonatomic, readwrite, copy, null_resettable) NSString *provider;

@property(nonatomic, readwrite, copy, null_resettable) NSString *subscriberId;

@end

#pragma mark - PushMessageRequest

typedef GPB_ENUM(PushMessageRequest_FieldNumber) {
  PushMessageRequest_FieldNumber_Event = 1,
  PushMessageRequest_FieldNumber_Message = 2,
  PushMessageRequest_FieldNumber_Title = 3,
  PushMessageRequest_FieldNumber_Localized = 4,
  PushMessageRequest_FieldNumber_Data_p = 5,
  PushMessageRequest_FieldNumber_Increment = 6,
  PushMessageRequest_FieldNumber_Category = 7,
  PushMessageRequest_FieldNumber_Sound = 8,
};

@interface PushMessageRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *event;

@property(nonatomic, readwrite, copy, null_resettable) NSString *message;

@property(nonatomic, readwrite, copy, null_resettable) NSString *title;

// |localized| values are |NSString|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary *localized;
@property(nonatomic, readonly) NSUInteger localized_Count;

// |data_p| values are |NSString|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary *data_p;
@property(nonatomic, readonly) NSUInteger data_p_Count;

@property(nonatomic, readwrite) BOOL increment;

@property(nonatomic, readwrite, copy, null_resettable) NSString *category;

@property(nonatomic, readwrite, copy, null_resettable) NSString *sound;

@end

#pragma mark - PushMessageResponse

// VOID
@interface PushMessageResponse : GPBMessage

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

// @@protoc_insertion_point(global_scope)
