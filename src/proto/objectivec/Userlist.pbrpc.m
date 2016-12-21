#import "Userlist.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation UserlistService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"UserlistService"]);
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

- (void)getChannelUsersWithRequest:(RPCUserlistGetChannelUsersRequest *)request handler:(void(^)(RPCUserlistGetChannelUsersResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetChannelUsersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetChannelUsersWithRequest:(RPCUserlistGetChannelUsersRequest *)request handler:(void(^)(RPCUserlistGetChannelUsersResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetChannelUsers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserlistGetChannelUsersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetHubMembers(RPCUserlistGetHubMembersRequest) returns (RPCUserlistGetHubMembersResponse)

- (void)getHubMembersWithRequest:(RPCUserlistGetHubMembersRequest *)request handler:(void(^)(RPCUserlistGetHubMembersResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetHubMembersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetHubMembersWithRequest:(RPCUserlistGetHubMembersRequest *)request handler:(void(^)(RPCUserlistGetHubMembersResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetHubMembers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserlistGetHubMembersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SearchHubMembers(RPCUserlistSearchHubMembersRequest) returns (RPCUserlistSearchHubMembersResponse)

- (void)searchHubMembersWithRequest:(RPCUserlistSearchHubMembersRequest *)request handler:(void(^)(RPCUserlistSearchHubMembersResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSearchHubMembersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSearchHubMembersWithRequest:(RPCUserlistSearchHubMembersRequest *)request handler:(void(^)(RPCUserlistSearchHubMembersResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SearchHubMembers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserlistSearchHubMembersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetUserCounts(RPCUserlistGetUserCountsRequest) returns (RPCUserlistGetUserCountsResponse)

- (void)getUserCountsWithRequest:(RPCUserlistGetUserCountsRequest *)request handler:(void(^)(RPCUserlistGetUserCountsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetUserCountsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetUserCountsWithRequest:(RPCUserlistGetUserCountsRequest *)request handler:(void(^)(RPCUserlistGetUserCountsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetUserCounts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCUserlistGetUserCountsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
