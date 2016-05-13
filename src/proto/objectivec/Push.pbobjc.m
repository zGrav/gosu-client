// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: push.proto

#import "GPBProtocolBuffers_RuntimeSupport.h"
#import "Push.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma mark - PushRoot

@implementation PushRoot

@end

#pragma mark - PushRoot_FileDescriptor

static GPBFileDescriptor *PushRoot_FileDescriptor(void) {
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

#pragma mark - PushRegisterRequest

@implementation PushRegisterRequest

@dynamic userId;
@dynamic agentId;
@dynamic token;
@dynamic provider;
@dynamic language;

typedef struct PushRegisterRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *userId;
  NSString *agentId;
  NSString *token;
  NSString *provider;
  NSString *language;
} PushRegisterRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "userId",
        .number = PushRegisterRequest_FieldNumber_UserId,
        .hasIndex = 0,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushRegisterRequest__storage_, userId),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "agentId",
        .number = PushRegisterRequest_FieldNumber_AgentId,
        .hasIndex = 1,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushRegisterRequest__storage_, agentId),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "token",
        .number = PushRegisterRequest_FieldNumber_Token,
        .hasIndex = 2,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushRegisterRequest__storage_, token),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "provider",
        .number = PushRegisterRequest_FieldNumber_Provider,
        .hasIndex = 3,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushRegisterRequest__storage_, provider),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "language",
        .number = PushRegisterRequest_FieldNumber_Language,
        .hasIndex = 4,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushRegisterRequest__storage_, language),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PushRegisterRequest class]
                                     rootClass:[PushRoot class]
                                          file:PushRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PushRegisterRequest__storage_)
                                    wireFormat:NO];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PushRegisterResponse

@implementation PushRegisterResponse

@dynamic userId;
@dynamic agentId;
@dynamic token;
@dynamic provider;
@dynamic subscriberId;

typedef struct PushRegisterResponse__storage_ {
  uint32_t _has_storage_[1];
  NSString *userId;
  NSString *agentId;
  NSString *token;
  NSString *provider;
  NSString *subscriberId;
} PushRegisterResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "userId",
        .number = PushRegisterResponse_FieldNumber_UserId,
        .hasIndex = 0,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushRegisterResponse__storage_, userId),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "agentId",
        .number = PushRegisterResponse_FieldNumber_AgentId,
        .hasIndex = 1,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushRegisterResponse__storage_, agentId),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "token",
        .number = PushRegisterResponse_FieldNumber_Token,
        .hasIndex = 2,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushRegisterResponse__storage_, token),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "provider",
        .number = PushRegisterResponse_FieldNumber_Provider,
        .hasIndex = 3,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushRegisterResponse__storage_, provider),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "subscriberId",
        .number = PushRegisterResponse_FieldNumber_SubscriberId,
        .hasIndex = 4,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushRegisterResponse__storage_, subscriberId),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PushRegisterResponse class]
                                     rootClass:[PushRoot class]
                                          file:PushRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PushRegisterResponse__storage_)
                                    wireFormat:NO];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PushMessageRequest

@implementation PushMessageRequest

@dynamic event;
@dynamic message;
@dynamic title;
@dynamic localized, localized_Count;
@dynamic data_p, data_p_Count;
@dynamic increment;
@dynamic category;
@dynamic sound;

typedef struct PushMessageRequest__storage_ {
  uint32_t _has_storage_[1];
  BOOL increment;
  NSString *event;
  NSString *message;
  NSString *title;
  NSMutableDictionary *localized;
  NSMutableDictionary *data_p;
  NSString *category;
  NSString *sound;
} PushMessageRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "event",
        .number = PushMessageRequest_FieldNumber_Event,
        .hasIndex = 0,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushMessageRequest__storage_, event),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "message",
        .number = PushMessageRequest_FieldNumber_Message,
        .hasIndex = 1,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushMessageRequest__storage_, message),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "title",
        .number = PushMessageRequest_FieldNumber_Title,
        .hasIndex = 2,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushMessageRequest__storage_, title),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "localized",
        .number = PushMessageRequest_FieldNumber_Localized,
        .hasIndex = GPBNoHasBit,
        .flags = GPBFieldMapKeyString,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushMessageRequest__storage_, localized),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "data_p",
        .number = PushMessageRequest_FieldNumber_Data_p,
        .hasIndex = GPBNoHasBit,
        .flags = GPBFieldMapKeyString,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushMessageRequest__storage_, data_p),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "increment",
        .number = PushMessageRequest_FieldNumber_Increment,
        .hasIndex = 5,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
        .offset = offsetof(PushMessageRequest__storage_, increment),
        .defaultValue.valueBool = NO,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "category",
        .number = PushMessageRequest_FieldNumber_Category,
        .hasIndex = 6,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushMessageRequest__storage_, category),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "sound",
        .number = PushMessageRequest_FieldNumber_Sound,
        .hasIndex = 7,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PushMessageRequest__storage_, sound),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PushMessageRequest class]
                                     rootClass:[PushRoot class]
                                          file:PushRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PushMessageRequest__storage_)
                                    wireFormat:NO];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PushMessageResponse

@implementation PushMessageResponse


typedef struct PushMessageResponse__storage_ {
  uint32_t _has_storage_[0];
} PushMessageResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PushMessageResponse class]
                                     rootClass:[PushRoot class]
                                          file:PushRoot_FileDescriptor()
                                        fields:NULL
                                    fieldCount:0
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PushMessageResponse__storage_)
                                    wireFormat:NO];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


// @@protoc_insertion_point(global_scope)