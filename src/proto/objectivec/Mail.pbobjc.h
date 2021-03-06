// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: mail.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30001
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class Channel;
@class Game;
@class Group;
@class User;
@class WebsocketMessage;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - MailRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface MailRoot : GPBRootObject
@end

#pragma mark - SendEmailRequest

typedef GPB_ENUM(SendEmailRequest_FieldNumber) {
  SendEmailRequest_FieldNumber_RecipientName = 1,
  SendEmailRequest_FieldNumber_RecipientAddress = 2,
  SendEmailRequest_FieldNumber_Subject = 3,
  SendEmailRequest_FieldNumber_Template_p = 4,
  SendEmailRequest_FieldNumber_Variables = 5,
};

@interface SendEmailRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *recipientName;

@property(nonatomic, readwrite, copy, null_resettable) NSString *recipientAddress;

@property(nonatomic, readwrite, copy, null_resettable) NSString *subject;

@property(nonatomic, readwrite, copy, null_resettable) NSString *template_p;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary<NSString*, NSString*> *variables;
/// The number of items in @c variables without causing the array to be created.
@property(nonatomic, readonly) NSUInteger variables_Count;

@end

#pragma mark - SendEmailResponse

/// VOID
@interface SendEmailResponse : GPBMessage

@end

#pragma mark - SendPushReminderRequest

typedef GPB_ENUM(SendPushReminderRequest_FieldNumber) {
  SendPushReminderRequest_FieldNumber_Recipient = 1,
  SendPushReminderRequest_FieldNumber_Message = 2,
  SendPushReminderRequest_FieldNumber_Channel = 3,
  SendPushReminderRequest_FieldNumber_Group = 4,
  SendPushReminderRequest_FieldNumber_Game = 5,
  SendPushReminderRequest_FieldNumber_ParticipantsArray = 6,
  SendPushReminderRequest_FieldNumber_WasMention = 7,
};

@interface SendPushReminderRequest : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) User *recipient;
/// Test to see if @c recipient has been set.
@property(nonatomic, readwrite) BOOL hasRecipient;

@property(nonatomic, readwrite, strong, null_resettable) WebsocketMessage *message;
/// Test to see if @c message has been set.
@property(nonatomic, readwrite) BOOL hasMessage;

@property(nonatomic, readwrite, strong, null_resettable) Channel *channel;
/// Test to see if @c channel has been set.
@property(nonatomic, readwrite) BOOL hasChannel;

@property(nonatomic, readwrite, strong, null_resettable) Group *group;
/// Test to see if @c group has been set.
@property(nonatomic, readwrite) BOOL hasGroup;

@property(nonatomic, readwrite, strong, null_resettable) Game *game;
/// Test to see if @c game has been set.
@property(nonatomic, readwrite) BOOL hasGame;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<User*> *participantsArray;
/// The number of items in @c participantsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger participantsArray_Count;

@property(nonatomic, readwrite) BOOL wasMention;

@end

#pragma mark - SendPushReminderResponse

typedef GPB_ENUM(SendPushReminderResponse_FieldNumber) {
  SendPushReminderResponse_FieldNumber_Recipient = 1,
  SendPushReminderResponse_FieldNumber_Message = 2,
  SendPushReminderResponse_FieldNumber_Channel = 3,
  SendPushReminderResponse_FieldNumber_Group = 4,
  SendPushReminderResponse_FieldNumber_Game = 5,
  SendPushReminderResponse_FieldNumber_ParticipantsArray = 6,
};

@interface SendPushReminderResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) User *recipient;
/// Test to see if @c recipient has been set.
@property(nonatomic, readwrite) BOOL hasRecipient;

@property(nonatomic, readwrite, strong, null_resettable) WebsocketMessage *message;
/// Test to see if @c message has been set.
@property(nonatomic, readwrite) BOOL hasMessage;

@property(nonatomic, readwrite, strong, null_resettable) Channel *channel;
/// Test to see if @c channel has been set.
@property(nonatomic, readwrite) BOOL hasChannel;

@property(nonatomic, readwrite, strong, null_resettable) Group *group;
/// Test to see if @c group has been set.
@property(nonatomic, readwrite) BOOL hasGroup;

@property(nonatomic, readwrite, strong, null_resettable) Game *game;
/// Test to see if @c game has been set.
@property(nonatomic, readwrite) BOOL hasGame;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<User*> *participantsArray;
/// The number of items in @c participantsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger participantsArray_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
