#import "Userlist.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Any.pbobjc.h"
#import "Profile.pbobjc.h"
#import "HubBase.pbobjc.h"
#import "Hub.pbobjc.h"

@protocol UserlistService <NSObject>

#pragma mark GetChannelUsers(RPCUserlistGetChannelUsersRequest) returns (RPCUserlistGetChannelUsersResponse)

- (void)getChannelUsersWithRequest:(RPCUserlistGetChannelUsersRequest *)request handler:(void(^)(RPCUserlistGetChannelUsersResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetChannelUsersWithRequest:(RPCUserlistGetChannelUsersRequest *)request handler:(void(^)(RPCUserlistGetChannelUsersResponse *response, NSError *error))handler;


#pragma mark GetHubMembers(RPCUserlistGetHubMembersRequest) returns (RPCUserlistGetHubMembersResponse)

- (void)getHubMembersWithRequest:(RPCUserlistGetHubMembersRequest *)request handler:(void(^)(RPCUserlistGetHubMembersResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetHubMembersWithRequest:(RPCUserlistGetHubMembersRequest *)request handler:(void(^)(RPCUserlistGetHubMembersResponse *response, NSError *error))handler;


#pragma mark SearchHubMembers(RPCUserlistSearchHubMembersRequest) returns (RPCUserlistSearchHubMembersResponse)

- (void)searchHubMembersWithRequest:(RPCUserlistSearchHubMembersRequest *)request handler:(void(^)(RPCUserlistSearchHubMembersResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToSearchHubMembersWithRequest:(RPCUserlistSearchHubMembersRequest *)request handler:(void(^)(RPCUserlistSearchHubMembersResponse *response, NSError *error))handler;


#pragma mark GetUserCounts(RPCUserlistGetUserCountsRequest) returns (RPCUserlistGetUserCountsResponse)

- (void)getUserCountsWithRequest:(RPCUserlistGetUserCountsRequest *)request handler:(void(^)(RPCUserlistGetUserCountsResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetUserCountsWithRequest:(RPCUserlistGetUserCountsRequest *)request handler:(void(^)(RPCUserlistGetUserCountsResponse *response, NSError *error))handler;


@end

// Basic service implementation, over gRPC, that only does marshalling and parsing.
@interface UserlistService : ProtoService<UserlistService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
