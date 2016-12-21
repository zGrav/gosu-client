#import "Search.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Any.pbobjc.h"
#import "Profile.pbobjc.h"
#import "HubBase.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol SearchService <NSObject>

#pragma mark Search(SearchRequest) returns (SearchResponse)

- (void)searchWithRequest:(SearchRequest *)request handler:(void(^)(SearchResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSearchWithRequest:(SearchRequest *)request handler:(void(^)(SearchResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SearchCommunities(SearchCommunitiesRequest) returns (SearchCommunitiesResponse)

- (void)searchCommunitiesWithRequest:(SearchCommunitiesRequest *)request handler:(void(^)(SearchCommunitiesResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSearchCommunitiesWithRequest:(SearchCommunitiesRequest *)request handler:(void(^)(SearchCommunitiesResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetActiveCommunities(ActiveCommunitiesRequest) returns (SearchResponse)

- (void)getActiveCommunitiesWithRequest:(ActiveCommunitiesRequest *)request handler:(void(^)(SearchResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetActiveCommunitiesWithRequest:(ActiveCommunitiesRequest *)request handler:(void(^)(SearchResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark IndexUser(User) returns (IndexResponse)

- (void)indexUserWithRequest:(User *)request handler:(void(^)(IndexResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToIndexUserWithRequest:(User *)request handler:(void(^)(IndexResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteUser(User) returns (DeleteResponse)

- (void)deleteUserWithRequest:(User *)request handler:(void(^)(DeleteResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteUserWithRequest:(User *)request handler:(void(^)(DeleteResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetSuggestions(SuggestionRequest) returns (SuggestionResponse)

- (void)getSuggestionsWithRequest:(SuggestionRequest *)request handler:(void(^)(SuggestionResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetSuggestionsWithRequest:(SuggestionRequest *)request handler:(void(^)(SuggestionResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface SearchService : GRPCProtoService<SearchService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
