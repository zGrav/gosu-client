// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: crawler.proto

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

@class WebsiteColors;
@class WebsiteInfo;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum CrawlerGetSiteInfoResponse_ErrorType

typedef GPB_ENUM(CrawlerGetSiteInfoResponse_ErrorType) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  CrawlerGetSiteInfoResponse_ErrorType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  CrawlerGetSiteInfoResponse_ErrorType_None = 0,
  CrawlerGetSiteInfoResponse_ErrorType_BadRequest = 1,
  CrawlerGetSiteInfoResponse_ErrorType_Forbidden = 2,
  CrawlerGetSiteInfoResponse_ErrorType_UnknownError = 3,
  CrawlerGetSiteInfoResponse_ErrorType_PageNotFound = 4,
  CrawlerGetSiteInfoResponse_ErrorType_CouldNotDecode = 5,
  CrawlerGetSiteInfoResponse_ErrorType_CouldNotCrawl = 6,
};

GPBEnumDescriptor *CrawlerGetSiteInfoResponse_ErrorType_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL CrawlerGetSiteInfoResponse_ErrorType_IsValidValue(int32_t value);

#pragma mark - Enum WebsiteInfo_WebsiteType

typedef GPB_ENUM(WebsiteInfo_WebsiteType) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  WebsiteInfo_WebsiteType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  WebsiteInfo_WebsiteType_Unknown = 0,
  WebsiteInfo_WebsiteType_Wiki = 1,
  WebsiteInfo_WebsiteType_Forum = 2,
};

GPBEnumDescriptor *WebsiteInfo_WebsiteType_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL WebsiteInfo_WebsiteType_IsValidValue(int32_t value);

#pragma mark - CrawlerRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface CrawlerRoot : GPBRootObject
@end

#pragma mark - RPCCrawlerGetSiteInfoRequest

typedef GPB_ENUM(RPCCrawlerGetSiteInfoRequest_FieldNumber) {
  RPCCrawlerGetSiteInfoRequest_FieldNumber_URL = 1,
};

@interface RPCCrawlerGetSiteInfoRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *URL;

@end

#pragma mark - RPCCrawlerGetSiteInfoResponse

typedef GPB_ENUM(RPCCrawlerGetSiteInfoResponse_FieldNumber) {
  RPCCrawlerGetSiteInfoResponse_FieldNumber_Error = 1,
  RPCCrawlerGetSiteInfoResponse_FieldNumber_SiteInfo = 2,
};

@interface RPCCrawlerGetSiteInfoResponse : GPBMessage

@property(nonatomic, readwrite) CrawlerGetSiteInfoResponse_ErrorType error;

@property(nonatomic, readwrite, strong, null_resettable) WebsiteInfo *siteInfo;
/// Test to see if @c siteInfo has been set.
@property(nonatomic, readwrite) BOOL hasSiteInfo;

@end

/// Fetches the raw value of a @c RPCCrawlerGetSiteInfoResponse's @c error property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t RPCCrawlerGetSiteInfoResponse_Error_RawValue(RPCCrawlerGetSiteInfoResponse *message);
/// Sets the raw value of an @c RPCCrawlerGetSiteInfoResponse's @c error property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetRPCCrawlerGetSiteInfoResponse_Error_RawValue(RPCCrawlerGetSiteInfoResponse *message, int32_t value);

#pragma mark - CrawlerGetSiteInfoResponse

typedef GPB_ENUM(CrawlerGetSiteInfoResponse_FieldNumber) {
  CrawlerGetSiteInfoResponse_FieldNumber_Error = 1,
  CrawlerGetSiteInfoResponse_FieldNumber_SiteInfo = 2,
};

@interface CrawlerGetSiteInfoResponse : GPBMessage

@property(nonatomic, readwrite) CrawlerGetSiteInfoResponse_ErrorType error;

@property(nonatomic, readwrite, strong, null_resettable) WebsiteInfo *siteInfo;
/// Test to see if @c siteInfo has been set.
@property(nonatomic, readwrite) BOOL hasSiteInfo;

@end

/// Fetches the raw value of a @c CrawlerGetSiteInfoResponse's @c error property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t CrawlerGetSiteInfoResponse_Error_RawValue(CrawlerGetSiteInfoResponse *message);
/// Sets the raw value of an @c CrawlerGetSiteInfoResponse's @c error property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetCrawlerGetSiteInfoResponse_Error_RawValue(CrawlerGetSiteInfoResponse *message, int32_t value);

#pragma mark - WebsiteInfo

typedef GPB_ENUM(WebsiteInfo_FieldNumber) {
  WebsiteInfo_FieldNumber_URL = 1,
  WebsiteInfo_FieldNumber_CanonicalURL = 2,
  WebsiteInfo_FieldNumber_Title = 3,
  WebsiteInfo_FieldNumber_Description_p = 4,
  WebsiteInfo_FieldNumber_KeywordsArray = 5,
  WebsiteInfo_FieldNumber_Language = 6,
  WebsiteInfo_FieldNumber_SiteType = 7,
  WebsiteInfo_FieldNumber_Topic = 8,
  WebsiteInfo_FieldNumber_Colors = 9,
  WebsiteInfo_FieldNumber_ShortName = 10,
  WebsiteInfo_FieldNumber_ImageURL = 11,
  WebsiteInfo_FieldNumber_IconURL = 12,
};

@interface WebsiteInfo : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *URL;

@property(nonatomic, readwrite, copy, null_resettable) NSString *canonicalURL;

@property(nonatomic, readwrite, copy, null_resettable) NSString *title;

@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *keywordsArray;
/// The number of items in @c keywordsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger keywordsArray_Count;

@property(nonatomic, readwrite, copy, null_resettable) NSString *language;

@property(nonatomic, readwrite) WebsiteInfo_WebsiteType siteType;

@property(nonatomic, readwrite, copy, null_resettable) NSString *topic;

@property(nonatomic, readwrite, strong, null_resettable) WebsiteColors *colors;
/// Test to see if @c colors has been set.
@property(nonatomic, readwrite) BOOL hasColors;

@property(nonatomic, readwrite, copy, null_resettable) NSString *shortName;

@property(nonatomic, readwrite, copy, null_resettable) NSString *imageURL;

@property(nonatomic, readwrite, copy, null_resettable) NSString *iconURL;

@end

/// Fetches the raw value of a @c WebsiteInfo's @c siteType property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t WebsiteInfo_SiteType_RawValue(WebsiteInfo *message);
/// Sets the raw value of an @c WebsiteInfo's @c siteType property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetWebsiteInfo_SiteType_RawValue(WebsiteInfo *message, int32_t value);

#pragma mark - WebsiteColors

@interface WebsiteColors : GPBMessage

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)