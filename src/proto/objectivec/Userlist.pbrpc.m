#import "Userlist.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

static NSString *const kPackageName = @"proto";
static NSString *const kServiceName = @"UserlistService";

@implementation UserlistService

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


#pragma mark GetChannelUsers(RPCUserlistGetChannelUsersRequest) returns (RPCUserlistGetChannelUsersResponse)

- (void)getChannelUsersWithRequest:(RPCUserlistGetChannelUsersRequest *)request handler:(void(^)(RPCUserlistGetChannelUsersResponse *response, NSError *error))handler{
  [[self RPCToGetChannelUsersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetChannelUsersWithRequest:(RPCUserlistGetChannelUsersRequest *)request handler:(void(^)(RPCUserlistGetChannelUsersResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetChannelUsers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserlistGetChannelUsersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetHubMembers(RPCUserlistGetHubMembersRequest) returns (RPCUserlistGetHubMembersResponse)

- (void)getHubMembersWithRequest:(RPCUserlistGetHubMembersRequest *)request handler:(void(^)(RPCUserlistGetHubMembersResponse *response, NSError *error))handler{
  [[self RPCToGetHubMembersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetHubMembersWithRequest:(RPCUserlistGetHubMembersRequest *)request handler:(void(^)(RPCUserlistGetHubMembersResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetHubMembers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserlistGetHubMembersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SearchHubMembers(RPCUserlistSearchHubMembersRequest) returns (RPCUserlistSearchHubMembersResponse)

- (void)searchHubMembersWithRequest:(RPCUserlistSearchHubMembersRequest *)request handler:(void(^)(RPCUserlistSearchHubMembersResponse *response, NSError *error))handler{
  [[self RPCToSearchHubMembersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToSearchHubMembersWithRequest:(RPCUserlistSearchHubMembersRequest *)request handler:(void(^)(RPCUserlistSearchHubMembersResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"SearchHubMembers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserlistSearchHubMembersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetUserCounts(RPCUserlistGetUserCountsRequest) returns (RPCUserlistGetUserCountsResponse)

- (void)getUserCountsWithRequest:(RPCUserlistGetUserCountsRequest *)request handler:(void(^)(RPCUserlistGetUserCountsResponse *response, NSError *error))handler{
  [[self RPCToGetUserCountsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetUserCountsWithRequest:(RPCUserlistGetUserCountsRequest *)request handler:(void(^)(RPCUserlistGetUserCountsResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetUserCounts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserlistGetUserCountsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
