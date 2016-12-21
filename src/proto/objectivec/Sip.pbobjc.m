// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: sip.proto

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

 #import "Sip.pbobjc.h"
 #import "Profile.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - SipRoot

@implementation SipRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[ProfileRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - SipRoot_FileDescriptor

static GPBFileDescriptor *SipRoot_FileDescriptor(void) {
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

#pragma mark - SipGetDeviceResponse

@implementation SipGetDeviceResponse

@dynamic privateId;
@dynamic publicId;
@dynamic realm;
@dynamic password;

typedef struct SipGetDeviceResponse__storage_ {
  uint32_t _has_storage_[1];
  NSString *privateId;
  NSString *publicId;
  NSString *realm;
  NSString *password;
} SipGetDeviceResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "privateId",
        .dataTypeSpecific.className = NULL,
        .number = SipGetDeviceResponse_FieldNumber_PrivateId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SipGetDeviceResponse__storage_, privateId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "publicId",
        .dataTypeSpecific.className = NULL,
        .number = SipGetDeviceResponse_FieldNumber_PublicId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(SipGetDeviceResponse__storage_, publicId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "realm",
        .dataTypeSpecific.className = NULL,
        .number = SipGetDeviceResponse_FieldNumber_Realm,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(SipGetDeviceResponse__storage_, realm),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "password",
        .dataTypeSpecific.className = NULL,
        .number = SipGetDeviceResponse_FieldNumber_Password,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(SipGetDeviceResponse__storage_, password),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SipGetDeviceResponse class]
                                     rootClass:[SipRoot class]
                                          file:SipRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SipGetDeviceResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - SipGetConferenceResponse

@implementation SipGetConferenceResponse

@dynamic address;

typedef struct SipGetConferenceResponse__storage_ {
  uint32_t _has_storage_[1];
  NSString *address;
} SipGetConferenceResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "address",
        .dataTypeSpecific.className = NULL,
        .number = SipGetConferenceResponse_FieldNumber_Address,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SipGetConferenceResponse__storage_, address),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SipGetConferenceResponse class]
                                     rootClass:[SipRoot class]
                                          file:SipRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SipGetConferenceResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - SipSetConferenceStatusRequest

@implementation SipSetConferenceStatusRequest

@dynamic voiceStatus;

typedef struct SipSetConferenceStatusRequest__storage_ {
  uint32_t _has_storage_[1];
  ChannelMembershipRecord_VoiceStatus voiceStatus;
} SipSetConferenceStatusRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "voiceStatus",
        .dataTypeSpecific.enumDescFunc = ChannelMembershipRecord_VoiceStatus_EnumDescriptor,
        .number = SipSetConferenceStatusRequest_FieldNumber_VoiceStatus,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SipSetConferenceStatusRequest__storage_, voiceStatus),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SipSetConferenceStatusRequest class]
                                     rootClass:[SipRoot class]
                                          file:SipRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SipSetConferenceStatusRequest__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t SipSetConferenceStatusRequest_VoiceStatus_RawValue(SipSetConferenceStatusRequest *message) {
  GPBDescriptor *descriptor = [SipSetConferenceStatusRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:SipSetConferenceStatusRequest_FieldNumber_VoiceStatus];
  return GPBGetMessageInt32Field(message, field);
}

void SetSipSetConferenceStatusRequest_VoiceStatus_RawValue(SipSetConferenceStatusRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [SipSetConferenceStatusRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:SipSetConferenceStatusRequest_FieldNumber_VoiceStatus];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
