// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: any.proto

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

NS_ASSUME_NONNULL_BEGIN

#pragma mark - AnyRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface AnyRoot : GPBRootObject
@end

#pragma mark - Any

typedef GPB_ENUM(Any_FieldNumber) {
  Any_FieldNumber_TypeURL = 1,
  Any_FieldNumber_Value = 2,
};

/// `Any` contains an arbitrary serialized message along with a URL
/// that describes the type of the serialized message.
///
/// The proto runtimes and/or compiler will eventually
///  provide utilities to pack/unpack Any values (projected Q1/15).
///
/// # JSON
/// The JSON representation of an `Any` value uses the regular
/// representation of the deserialized, embedded message, with an
/// additional field `\@type` which contains the type URL. Example:
///
///     package google.profile;
///     message Person {
///       string first_name = 1;
///       string last_name = 2;
///     }
///
///     {
///       "\@type": "type.googleapis.com/google.profile.Person",
///       "firstName": <string>,
///       "lastName": <string>
///     }
///
/// If the embedded message type is well-known and has a custom JSON
/// representation, that representation will be embedded adding a field
/// `value` which holds the custom JSON in addition to the the `\@type`
/// field. Example (for message [google.protobuf.Duration][google.protobuf.Duration]):
///
///     {
///       "\@type": "type.googleapis.com/google.protobuf.Duration",
///       "value": "1.212s"
///     }
@interface Any : GPBMessage

/// A URL/resource name whose content describes the type of the
/// serialized message.
///
/// For URLs which use the schema `http`, `https`, or no schema, the
/// following restrictions and interpretations apply:
///
/// * If no schema is provided, `https` is assumed.
/// * The last segment of the URL's path must represent the fully
///   qualified name of the type (as in `path/google.protobuf.Duration`).
/// * An HTTP GET on the URL must yield a [google.protobuf.Type][google.protobuf.Type]
///   value in binary format, or produce an error.
/// * Applications are allowed to cache lookup results based on the
///   URL, or have them precompiled into a binary to avoid any
///   lookup. Therefore, binary compatibility needs to be preserved
///   on changes to types. (Use versioned type names to manage
///   breaking changes.)
///
/// Schemas other than `http`, `https` (or the empty schema) might be
/// used with implementation specific semantics.
///
/// Types originating from the `google.*` package
/// namespace should use `type.googleapis.com/full.type.name` (without
/// schema and path). A type service will eventually become available which
/// serves those URLs (projected Q2/15).
@property(nonatomic, readwrite, copy, null_resettable) NSString *typeURL;

/// Must be valid serialized data of the above specified type.
@property(nonatomic, readwrite, copy, null_resettable) NSData *value;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
