#import "Search.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

static NSString *const kPackageName = @"proto";
static NSString *const kServiceName = @"SearchService";

@implementation SearchService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:kPackageName serviceName:kServiceName]);
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

- (void)searchWithRequest:(SearchRequest *)request handler:(void(^)(SearchResponse *response, NSError *error))handler{
  [[self RPCToSearchWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToSearchWithRequest:(SearchRequest *)request handler:(void(^)(SearchResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"Search"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[SearchResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark IndexGroup(Group) returns (IndexResponse)

- (void)indexGroupWithRequest:(Group *)request handler:(void(^)(IndexResponse *response, NSError *error))handler{
  [[self RPCToIndexGroupWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToIndexGroupWithRequest:(Group *)request handler:(void(^)(IndexResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"IndexGroup"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[IndexResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteGroup(Group) returns (DeleteResponse)

- (void)deleteGroupWithRequest:(Group *)request handler:(void(^)(DeleteResponse *response, NSError *error))handler{
  [[self RPCToDeleteGroupWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToDeleteGroupWithRequest:(Group *)request handler:(void(^)(DeleteResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"DeleteGroup"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DeleteResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark IndexUser(User) returns (IndexResponse)

- (void)indexUserWithRequest:(User *)request handler:(void(^)(IndexResponse *response, NSError *error))handler{
  [[self RPCToIndexUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToIndexUserWithRequest:(User *)request handler:(void(^)(IndexResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"IndexUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[IndexResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteUser(User) returns (DeleteResponse)

- (void)deleteUserWithRequest:(User *)request handler:(void(^)(DeleteResponse *response, NSError *error))handler{
  [[self RPCToDeleteUserWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToDeleteUserWithRequest:(User *)request handler:(void(^)(DeleteResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"DeleteUser"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DeleteResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetSuggestions(SuggestionRequest) returns (SuggestionResponse)

- (void)getSuggestionsWithRequest:(SuggestionRequest *)request handler:(void(^)(SuggestionResponse *response, NSError *error))handler{
  [[self RPCToGetSuggestionsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetSuggestionsWithRequest:(SuggestionRequest *)request handler:(void(^)(SuggestionResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetSuggestions"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[SuggestionResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
