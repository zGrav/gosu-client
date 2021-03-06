// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: search.proto

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

@class Any;
@class GeoLocation;
@class Highlights;
@class Hub;
@class SearchChannel;
@class SearchCommunitiesResponseEntry;
@class SearchGame;
@class SearchGroup;
@class SearchHit;
@class SearchHits;
@class SearchUser;
@class Suggestion;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum SearchCommunitiesResponse_ErrorType

typedef GPB_ENUM(SearchCommunitiesResponse_ErrorType) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  SearchCommunitiesResponse_ErrorType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  SearchCommunitiesResponse_ErrorType_None = 0,
  SearchCommunitiesResponse_ErrorType_UnknownError = 1,
  SearchCommunitiesResponse_ErrorType_BadRequest = 2,
};

GPBEnumDescriptor *SearchCommunitiesResponse_ErrorType_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL SearchCommunitiesResponse_ErrorType_IsValidValue(int32_t value);

#pragma mark - Enum SearchHit_Type

typedef GPB_ENUM(SearchHit_Type) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  SearchHit_Type_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  SearchHit_Type_Unknown = 0,
  SearchHit_Type_DeprecatedGroup = 1,
  SearchHit_Type_User = 2,
  SearchHit_Type_DeprecatedGame = 3,
  SearchHit_Type_Community = 4,
};

GPBEnumDescriptor *SearchHit_Type_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL SearchHit_Type_IsValidValue(int32_t value);

#pragma mark - Enum Suggestion_Type

typedef GPB_ENUM(Suggestion_Type) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  Suggestion_Type_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Suggestion_Type_Unknown = 0,
  Suggestion_Type_Group = 1,
  Suggestion_Type_User = 2,
  Suggestion_Type_DeprecatedGame = 3,
  Suggestion_Type_DeprecatedCommunity = 4,
};

GPBEnumDescriptor *Suggestion_Type_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL Suggestion_Type_IsValidValue(int32_t value);

#pragma mark - SearchRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface SearchRoot : GPBRootObject
@end

#pragma mark - ActiveCommunitiesRequest

typedef GPB_ENUM(ActiveCommunitiesRequest_FieldNumber) {
  ActiveCommunitiesRequest_FieldNumber_Size = 1,
  ActiveCommunitiesRequest_FieldNumber_From = 2,
};

@interface ActiveCommunitiesRequest : GPBMessage

@property(nonatomic, readwrite) int32_t size;

@property(nonatomic, readwrite) int32_t from;

@end

#pragma mark - SearchRequest

typedef GPB_ENUM(SearchRequest_FieldNumber) {
  SearchRequest_FieldNumber_TypesArray = 1,
  SearchRequest_FieldNumber_FieldsArray = 2,
  SearchRequest_FieldNumber_Text = 3,
  SearchRequest_FieldNumber_Fuzzy = 4,
  SearchRequest_FieldNumber_Size = 5,
  SearchRequest_FieldNumber_From = 6,
};

@interface SearchRequest : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *typesArray;
/// The number of items in @c typesArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger typesArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *fieldsArray;
/// The number of items in @c fieldsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger fieldsArray_Count;

@property(nonatomic, readwrite, copy, null_resettable) NSString *text;

@property(nonatomic, readwrite) BOOL fuzzy;

@property(nonatomic, readwrite) int32_t size;

@property(nonatomic, readwrite) int32_t from;

@end

#pragma mark - SearchResponse

typedef GPB_ENUM(SearchResponse_FieldNumber) {
  SearchResponse_FieldNumber_Hits = 1,
  SearchResponse_FieldNumber_From = 2,
};

@interface SearchResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary<NSString*, SearchHits*> *hits;
/// The number of items in @c hits without causing the array to be created.
@property(nonatomic, readonly) NSUInteger hits_Count;

@property(nonatomic, readwrite) int32_t from;

@end

#pragma mark - SearchCommunitiesRequest

typedef GPB_ENUM(SearchCommunitiesRequest_FieldNumber) {
  SearchCommunitiesRequest_FieldNumber_GeoLocation = 1,
  SearchCommunitiesRequest_FieldNumber_From = 2,
  SearchCommunitiesRequest_FieldNumber_Size = 3,
};

@interface SearchCommunitiesRequest : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GeoLocation *geoLocation;
/// Test to see if @c geoLocation has been set.
@property(nonatomic, readwrite) BOOL hasGeoLocation;

@property(nonatomic, readwrite) int64_t from;

@property(nonatomic, readwrite) int64_t size;

@end

#pragma mark - SearchCommunitiesResponse

typedef GPB_ENUM(SearchCommunitiesResponse_FieldNumber) {
  SearchCommunitiesResponse_FieldNumber_Error = 1,
  SearchCommunitiesResponse_FieldNumber_TotalResults = 2,
  SearchCommunitiesResponse_FieldNumber_From = 3,
  SearchCommunitiesResponse_FieldNumber_CommunitiesArray = 4,
};

@interface SearchCommunitiesResponse : GPBMessage

@property(nonatomic, readwrite) SearchCommunitiesResponse_ErrorType error;

@property(nonatomic, readwrite) int64_t totalResults;

@property(nonatomic, readwrite) int64_t from;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<SearchCommunitiesResponseEntry*> *communitiesArray;
/// The number of items in @c communitiesArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger communitiesArray_Count;

@end

/// Fetches the raw value of a @c SearchCommunitiesResponse's @c error property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t SearchCommunitiesResponse_Error_RawValue(SearchCommunitiesResponse *message);
/// Sets the raw value of an @c SearchCommunitiesResponse's @c error property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetSearchCommunitiesResponse_Error_RawValue(SearchCommunitiesResponse *message, int32_t value);

#pragma mark - SearchCommunitiesResponseEntry

typedef GPB_ENUM(SearchCommunitiesResponseEntry_FieldNumber) {
  SearchCommunitiesResponseEntry_FieldNumber_Hub = 1,
  SearchCommunitiesResponseEntry_FieldNumber_Distance = 2,
};

@interface SearchCommunitiesResponseEntry : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) Hub *hub;
/// Test to see if @c hub has been set.
@property(nonatomic, readwrite) BOOL hasHub;

@property(nonatomic, readwrite) float distance;

@end

#pragma mark - SearchHits

typedef GPB_ENUM(SearchHits_FieldNumber) {
  SearchHits_FieldNumber_HitsArray = 1,
  SearchHits_FieldNumber_Type = 2,
  SearchHits_FieldNumber_Total = 3,
};

@interface SearchHits : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<SearchHit*> *hitsArray;
/// The number of items in @c hitsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger hitsArray_Count;

@property(nonatomic, readwrite, copy, null_resettable) NSString *type;

@property(nonatomic, readwrite) int64_t total;

@end

#pragma mark - SearchHit

typedef GPB_ENUM(SearchHit_FieldNumber) {
  SearchHit_FieldNumber_Score = 1,
  SearchHit_FieldNumber_Index = 2,
  SearchHit_FieldNumber_Type = 3,
  SearchHit_FieldNumber_Id_p = 4,
  SearchHit_FieldNumber_Highlights = 5,
  SearchHit_FieldNumber_User = 10,
  SearchHit_FieldNumber_DeprecatedGroup = 11,
  SearchHit_FieldNumber_DeprecatedGame = 12,
  SearchHit_FieldNumber_Community = 13,
};

typedef GPB_ENUM(SearchHit_Source_OneOfCase) {
  SearchHit_Source_OneOfCase_GPBUnsetOneOfCase = 0,
  SearchHit_Source_OneOfCase_User = 10,
  SearchHit_Source_OneOfCase_DeprecatedGroup = 11,
  SearchHit_Source_OneOfCase_DeprecatedGame = 12,
  SearchHit_Source_OneOfCase_Community = 13,
};

@interface SearchHit : GPBMessage

@property(nonatomic, readwrite) float score;

@property(nonatomic, readwrite, copy, null_resettable) NSString *index;

@property(nonatomic, readwrite) SearchHit_Type type;

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary<NSString*, Highlights*> *highlights;
/// The number of items in @c highlights without causing the array to be created.
@property(nonatomic, readonly) NSUInteger highlights_Count;

@property(nonatomic, readonly) SearchHit_Source_OneOfCase sourceOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) SearchUser *user;

@property(nonatomic, readwrite, strong, null_resettable) SearchGroup *deprecatedGroup;

@property(nonatomic, readwrite, strong, null_resettable) SearchGame *deprecatedGame;

@property(nonatomic, readwrite, strong, null_resettable) Hub *community;

@end

/// Fetches the raw value of a @c SearchHit's @c type property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t SearchHit_Type_RawValue(SearchHit *message);
/// Sets the raw value of an @c SearchHit's @c type property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetSearchHit_Type_RawValue(SearchHit *message, int32_t value);

/// Clears whatever value was set for the oneof 'source'.
void SearchHit_ClearSourceOneOfCase(SearchHit *message);

#pragma mark - Highlights

typedef GPB_ENUM(Highlights_FieldNumber) {
  Highlights_FieldNumber_Field = 1,
  Highlights_FieldNumber_HighlightsArray = 2,
};

@interface Highlights : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *field;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *highlightsArray;
/// The number of items in @c highlightsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger highlightsArray_Count;

@end

#pragma mark - IndexResponse

typedef GPB_ENUM(IndexResponse_FieldNumber) {
  IndexResponse_FieldNumber_Index = 1,
  IndexResponse_FieldNumber_Type = 2,
  IndexResponse_FieldNumber_Id_p = 3,
  IndexResponse_FieldNumber_Version = 4,
  IndexResponse_FieldNumber_Created = 5,
};

@interface IndexResponse : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *index;

@property(nonatomic, readwrite, copy, null_resettable) NSString *type;

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite) int64_t version;

@property(nonatomic, readwrite) BOOL created;

@end

#pragma mark - DeleteResponse

typedef GPB_ENUM(DeleteResponse_FieldNumber) {
  DeleteResponse_FieldNumber_Found = 1,
  DeleteResponse_FieldNumber_Index = 2,
  DeleteResponse_FieldNumber_Type = 3,
  DeleteResponse_FieldNumber_Id_p = 4,
  DeleteResponse_FieldNumber_Version = 5,
};

@interface DeleteResponse : GPBMessage

@property(nonatomic, readwrite) BOOL found;

@property(nonatomic, readwrite, copy, null_resettable) NSString *index;

@property(nonatomic, readwrite, copy, null_resettable) NSString *type;

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite) int64_t version;

@end

#pragma mark - Suggestion

typedef GPB_ENUM(Suggestion_FieldNumber) {
  Suggestion_FieldNumber_Id_p = 1,
  Suggestion_FieldNumber_Type = 2,
  Suggestion_FieldNumber_Title = 3,
  Suggestion_FieldNumber_Image = 4,
  Suggestion_FieldNumber_DeprecatedProprietary = 5,
  Suggestion_FieldNumber_Data_p = 6,
};

@interface Suggestion : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite) Suggestion_Type type;

@property(nonatomic, readwrite, copy, null_resettable) NSString *title;

@property(nonatomic, readwrite, copy, null_resettable) NSString *image;

@property(nonatomic, readwrite, copy, null_resettable) NSData *deprecatedProprietary;

@property(nonatomic, readwrite, strong, null_resettable) Any *data_p;
/// Test to see if @c data_p has been set.
@property(nonatomic, readwrite) BOOL hasData_p;

@end

/// Fetches the raw value of a @c Suggestion's @c type property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t Suggestion_Type_RawValue(Suggestion *message);
/// Sets the raw value of an @c Suggestion's @c type property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetSuggestion_Type_RawValue(Suggestion *message, int32_t value);

#pragma mark - SuggestionRequest

typedef GPB_ENUM(SuggestionRequest_FieldNumber) {
  SuggestionRequest_FieldNumber_Text = 1,
  SuggestionRequest_FieldNumber_Fuzzy = 2,
  SuggestionRequest_FieldNumber_ContextArray = 3,
};

@interface SuggestionRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *text;

@property(nonatomic, readwrite) BOOL fuzzy;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *contextArray;
/// The number of items in @c contextArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger contextArray_Count;

@end

#pragma mark - SuggestionResponse

typedef GPB_ENUM(SuggestionResponse_FieldNumber) {
  SuggestionResponse_FieldNumber_SuggestionsArray = 1,
};

@interface SuggestionResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Suggestion*> *suggestionsArray;
/// The number of items in @c suggestionsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger suggestionsArray_Count;

@end

#pragma mark - SearchGroup

typedef GPB_ENUM(SearchGroup_FieldNumber) {
  SearchGroup_FieldNumber_Id_p = 1,
  SearchGroup_FieldNumber_Name = 2,
  SearchGroup_FieldNumber_Description_p = 3,
  SearchGroup_FieldNumber_TitleImage = 4,
  SearchGroup_FieldNumber_BackgroundImage = 5,
  SearchGroup_FieldNumber_ChannelsArray = 6,
};

@interface SearchGroup : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *titleImage;

@property(nonatomic, readwrite, copy, null_resettable) NSString *backgroundImage;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<SearchChannel*> *channelsArray;
/// The number of items in @c channelsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger channelsArray_Count;

@end

#pragma mark - SearchGame

typedef GPB_ENUM(SearchGame_FieldNumber) {
  SearchGame_FieldNumber_Id_p = 1,
  SearchGame_FieldNumber_Name = 2,
  SearchGame_FieldNumber_ShortName = 3,
  SearchGame_FieldNumber_TitleImage = 4,
  SearchGame_FieldNumber_BackgroundImagesArray = 5,
  SearchGame_FieldNumber_ChannelsArray = 6,
};

@interface SearchGame : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, copy, null_resettable) NSString *shortName;

@property(nonatomic, readwrite, copy, null_resettable) NSString *titleImage;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *backgroundImagesArray;
/// The number of items in @c backgroundImagesArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger backgroundImagesArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<SearchChannel*> *channelsArray;
/// The number of items in @c channelsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger channelsArray_Count;

@end

#pragma mark - SearchChannel

typedef GPB_ENUM(SearchChannel_FieldNumber) {
  SearchChannel_FieldNumber_Id_p = 1,
  SearchChannel_FieldNumber_Title = 2,
  SearchChannel_FieldNumber_Topic = 3,
  SearchChannel_FieldNumber_TagsArray = 4,
};

@interface SearchChannel : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *title;

@property(nonatomic, readwrite, copy, null_resettable) NSString *topic;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *tagsArray;
/// The number of items in @c tagsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger tagsArray_Count;

@end

#pragma mark - SearchUser

typedef GPB_ENUM(SearchUser_FieldNumber) {
  SearchUser_FieldNumber_Id_p = 1,
  SearchUser_FieldNumber_Name = 2,
  SearchUser_FieldNumber_AvatarImage = 3,
  SearchUser_FieldNumber_BackgroundImage = 4,
};

@interface SearchUser : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, copy, null_resettable) NSString *avatarImage;

@property(nonatomic, readwrite, copy, null_resettable) NSString *backgroundImage;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
