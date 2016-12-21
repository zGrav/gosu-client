#import "Search.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation SearchService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"SearchService"]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark Search(SearchRequest) returns (SearchResponse)

- (void)searchWithRequest:(SearchRequest *)request handler:(void(^)(SearchResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSearchWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSearchWithRequest:(SearchRequest *)request handler:(void(^)(SearchResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Search"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[SearchResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SearchCommunities(SearchCommunitiesRequest) returns (SearchCommunitiesResponse)

- (void)searchCommunitiesWithRequest:(SearchCommunitiesRequest *)request handler:(void(^)(SearchCommunitiesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSearchCommunitiesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSearchCommunitiesWithRequest:(SearchCommunitiesRequest *)request handler:(void(^)(SearchCommunitiesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SearchCommunities"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[SearchCommunitiesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetActiveCommunities(ActiveCommunitiesRequest) returns (SearchResponse)

- (void)getActiveCommunitiesWithRequest:(ActiveCommunitiesRequest *)request handler:(void(^)(SearchResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetActiveCommunitiesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetActiveCommunitiesWithRequest:(ActiveCommunitiesRequest *)request handler:(void(^)(SearchResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetActiveCommunities"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[SearchResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark IndexUser(User) returns (IndexResponse)

- (void)indexUserWithRequest:(User *)request handler:(void(^)(IndexResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToIndexUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToIndexUserWithRequest:(User *)request handler:(void(^)(IndexResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"IndexUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[IndexResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteUser(User) returns (DeleteResponse)

- (void)deleteUserWithRequest:(User *)request handler:(void(^)(DeleteResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeleteUserWithRequest:(User *)request handler:(void(^)(DeleteResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DeleteResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetSuggestions(SuggestionRequest) returns (SuggestionResponse)

- (void)getSuggestionsWithRequest:(SuggestionRequest *)request handler:(void(^)(SuggestionResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetSuggestionsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetSuggestionsWithRequest:(SuggestionRequest *)request handler:(void(^)(SuggestionResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetSuggestions"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[SuggestionResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
