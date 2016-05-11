#import "Search.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Any.pbobjc.h"
#import "Profile.pbobjc.h"
#import "HubBase.pbobjc.h"

@protocol SearchService <NSObject>

#pragma mark Search(SearchRequest) returns (SearchResponse)

- (void)searchWithRequest:(SearchRequest *)request handler:(void(^)(SearchResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToSearchWithRequest:(SearchRequest *)request handler:(void(^)(SearchResponse *response, NSError *error))handler;


#pragma mark IndexGroup(Group) returns (IndexResponse)

- (void)indexGroupWithRequest:(Group *)request handler:(void(^)(IndexResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToIndexGroupWithRequest:(Group *)request handler:(void(^)(IndexResponse *response, NSError *error))handler;


#pragma mark DeleteGroup(Group) returns (DeleteResponse)

- (void)deleteGroupWithRequest:(Group *)request handler:(void(^)(DeleteResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToDeleteGroupWithRequest:(Group *)request handler:(void(^)(DeleteResponse *response, NSError *error))handler;


#pragma mark IndexUser(User) returns (IndexResponse)

- (void)indexUserWithRequest:(User *)request handler:(void(^)(IndexResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToIndexUserWithRequest:(User *)request handler:(void(^)(IndexResponse *response, NSError *error))handler;


#pragma mark DeleteUser(User) returns (DeleteResponse)

- (void)deleteUserWithRequest:(User *)request handler:(void(^)(DeleteResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToDeleteUserWithRequest:(User *)request handler:(void(^)(DeleteResponse *response, NSError *error))handler;


#pragma mark GetSuggestions(SuggestionRequest) returns (SuggestionResponse)

- (void)getSuggestionsWithRequest:(SuggestionRequest *)request handler:(void(^)(SuggestionResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetSuggestionsWithRequest:(SuggestionRequest *)request handler:(void(^)(SuggestionResponse *response, NSError *error))handler;


@end

// Basic service implementation, over gRPC, that only does marshalling and parsing.
@interface SearchService : ProtoService<SearchService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
