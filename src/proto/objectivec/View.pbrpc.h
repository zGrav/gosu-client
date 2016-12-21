#import "View.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Wrappers.pbobjc.h"
#import "Profile.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol ViewsService <NSObject>

#pragma mark CreateView(RPCViewsCreateViewRequest) returns (RPCViewsCreateViewResponse)

- (void)createViewWithRequest:(RPCViewsCreateViewRequest *)request handler:(void(^)(RPCViewsCreateViewResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCreateViewWithRequest:(RPCViewsCreateViewRequest *)request handler:(void(^)(RPCViewsCreateViewResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark EditView(RPCViewsEditViewRequest) returns (RPCViewsEditViewResponse)

- (void)editViewWithRequest:(RPCViewsEditViewRequest *)request handler:(void(^)(RPCViewsEditViewResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToEditViewWithRequest:(RPCViewsEditViewRequest *)request handler:(void(^)(RPCViewsEditViewResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteView(RPCViewsDeleteViewRequest) returns (RPCViewsDeleteViewResponse)

- (void)deleteViewWithRequest:(RPCViewsDeleteViewRequest *)request handler:(void(^)(RPCViewsDeleteViewResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteViewWithRequest:(RPCViewsDeleteViewRequest *)request handler:(void(^)(RPCViewsDeleteViewResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetView(RPCViewsGetViewRequest) returns (RPCViewsGetViewResponse)

- (void)getViewWithRequest:(RPCViewsGetViewRequest *)request handler:(void(^)(RPCViewsGetViewResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetViewWithRequest:(RPCViewsGetViewRequest *)request handler:(void(^)(RPCViewsGetViewResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetViews(RPCViewsGetViewsRequest) returns (RPCViewsGetViewsResponse)

- (void)getViewsWithRequest:(RPCViewsGetViewsRequest *)request handler:(void(^)(RPCViewsGetViewsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetViewsWithRequest:(RPCViewsGetViewsRequest *)request handler:(void(^)(RPCViewsGetViewsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SetViewProperties(RPCViewsSetViewPropertiesRequest) returns (RPCViewsSetViewPropertiesResponse)

- (void)setViewPropertiesWithRequest:(RPCViewsSetViewPropertiesRequest *)request handler:(void(^)(RPCViewsSetViewPropertiesResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSetViewPropertiesWithRequest:(RPCViewsSetViewPropertiesRequest *)request handler:(void(^)(RPCViewsSetViewPropertiesResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteViewProperties(RPCViewsDeleteViewPropertiesRequest) returns (RPCViewsDeleteViewPropertiesResponse)

- (void)deleteViewPropertiesWithRequest:(RPCViewsDeleteViewPropertiesRequest *)request handler:(void(^)(RPCViewsDeleteViewPropertiesResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteViewPropertiesWithRequest:(RPCViewsDeleteViewPropertiesRequest *)request handler:(void(^)(RPCViewsDeleteViewPropertiesResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark PopulateViewFromURL(RPCViewsPopulateViewFromURLRequest) returns (RPCViewsPopulateViewFromURLResponse)

- (void)populateViewFromURLWithRequest:(RPCViewsPopulateViewFromURLRequest *)request handler:(void(^)(RPCViewsPopulateViewFromURLResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToPopulateViewFromURLWithRequest:(RPCViewsPopulateViewFromURLRequest *)request handler:(void(^)(RPCViewsPopulateViewFromURLResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark TransferOwnership(RPCViewsTransferOwnershipRequest) returns (RPCViewsTransferOwnershipResponse)

- (void)transferOwnershipWithRequest:(RPCViewsTransferOwnershipRequest *)request handler:(void(^)(RPCViewsTransferOwnershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToTransferOwnershipWithRequest:(RPCViewsTransferOwnershipRequest *)request handler:(void(^)(RPCViewsTransferOwnershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetEditorInviteCode(RPCViewsGetEditorInviteCodeRequest) returns (RPCViewsGetEditorInviteCodeResponse)

- (void)getEditorInviteCodeWithRequest:(RPCViewsGetEditorInviteCodeRequest *)request handler:(void(^)(RPCViewsGetEditorInviteCodeResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetEditorInviteCodeWithRequest:(RPCViewsGetEditorInviteCodeRequest *)request handler:(void(^)(RPCViewsGetEditorInviteCodeResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetEditorInviteInfo(RPCViewsGetEditorInviteInfoRequest) returns (RPCViewsGetEditorInviteInfoResponse)

- (void)getEditorInviteInfoWithRequest:(RPCViewsGetEditorInviteInfoRequest *)request handler:(void(^)(RPCViewsGetEditorInviteInfoResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetEditorInviteInfoWithRequest:(RPCViewsGetEditorInviteInfoRequest *)request handler:(void(^)(RPCViewsGetEditorInviteInfoResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AcceptEditorInvite(RPCViewsAcceptEditorInviteRequest) returns (RPCViewsAcceptEditorInviteResponse)

- (void)acceptEditorInviteWithRequest:(RPCViewsAcceptEditorInviteRequest *)request handler:(void(^)(RPCViewsAcceptEditorInviteResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAcceptEditorInviteWithRequest:(RPCViewsAcceptEditorInviteRequest *)request handler:(void(^)(RPCViewsAcceptEditorInviteResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RemoveEditor(RPCViewsRemoveEditorRequest) returns (RPCViewsRemoveEditorResponse)

- (void)removeEditorWithRequest:(RPCViewsRemoveEditorRequest *)request handler:(void(^)(RPCViewsRemoveEditorResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRemoveEditorWithRequest:(RPCViewsRemoveEditorRequest *)request handler:(void(^)(RPCViewsRemoveEditorResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface ViewsService : GRPCProtoService<ViewsService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
