// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: any.proto

#import "GPBProtocolBuffers_RuntimeSupport.h"
#import "Any.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma mark - AnyRoot

@implementation AnyRoot

@end

#pragma mark - AnyRoot_FileDescriptor

static GPBFileDescriptor *AnyRoot_FileDescriptor(void) {
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

#pragma mark - Any

@implementation Any

@dynamic typeURL;
@dynamic value;

typedef struct Any__storage_ {
  uint32_t _has_storage_[1];
  NSString *typeURL;
  NSData *value;
} Any__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "typeURL",
        .number = Any_FieldNumber_TypeURL,
        .hasIndex = 0,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(Any__storage_, typeURL),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "value",
        .number = Any_FieldNumber_Value,
        .hasIndex = 1,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
        .offset = offsetof(Any__storage_, value),
        .defaultValue.valueData = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
    };
#if GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    const char *extraTextFormatInfo = NULL;
#else
    static const char *extraTextFormatInfo = "\001\001\004\241!!\000";
#endif  // GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Any class]
                                     rootClass:[AnyRoot class]
                                          file:AnyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(Any__storage_)
                                    wireFormat:NO
                           extraTextFormatInfo:extraTextFormatInfo];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


// @@protoc_insertion_point(global_scope)