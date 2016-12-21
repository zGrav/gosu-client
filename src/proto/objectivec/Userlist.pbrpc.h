#import "Userlist.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Any.pbobjc.h"
#import "Profile.pbobjc.h"
#import "HubBase.pbobjc.h"
#import "Hub.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol UserlistService <NSObject>

#pragma mark GetChannelUsers(RPCUserlistGetChannelUsersRequest) returns (RPCUserlistGetChannelUsersResponse)

- (void)getChannelUsersWithRequest:(RPCUserlistGetChannelUsersRequest *)request handler:(void(^)(RPCUserlistGetChannelUsersResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetChannelUsersWithRequest:(RPCUserlistGetChannelUsersRequest *)request handler:(void(^)(RPCUserlistGetChannelUsersResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetHubMembers(RPCUserlistGetHubMembersRequest) returns (RPCUserlistGetHubMembersResponse)

- (void)getHubMembersWithRequest:(RPCUserlistGetHubMembersRequest *)request handler:(void(^)(RPCUserlistGetHubMembersResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetHubMembersWithRequest:(RPCUserlistGetHubMembersRequest *)request handler:(void(^)(RPCUserlistGetHubMembersResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SearchHubMembers(RPCUserlistSearchHubMembersRequest) returns (RPCUserlistSearchHubMembersResponse)

- (void)searchHubMembersWithRequest:(RPCUserlistSearchHubMembersRequest *)request handler:(void(^)(RPCUserlistSearchHubMembersResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSearchHubMembersWithRequest:(RPCUserlistSearchHubMembersRequest *)request handler:(void(^)(RPCUserlistSearchHubMembersResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetUserCounts(RPCUserlistGetUserCountsRequest) returns (RPCUserlistGetUserCountsResponse)

- (void)getUserCountsWithRequest:(RPCUserlistGetUserCountsRequest *)request handler:(void(^)(RPCUserlistGetUserCountsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetUserCountsWithRequest:(RPCUserlistGetUserCountsRequest *)request handler:(void(^)(RPCUserlistGetUserCountsResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface UserlistService : GRPCProtoService<UserlistService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
