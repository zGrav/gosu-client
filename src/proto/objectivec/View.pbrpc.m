#import "View.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation ViewsService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"ViewsService"]);
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


#pragma mark CreateView(RPCViewsCreateViewRequest) returns (RPCViewsCreateViewResponse)

- (void)createViewWithRequest:(RPCViewsCreateViewRequest *)request handler:(void(^)(RPCViewsCreateViewResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateViewWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCreateViewWithRequest:(RPCViewsCreateViewRequest *)request handler:(void(^)(RPCViewsCreateViewResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateView"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCViewsCreateViewResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark EditView(RPCViewsEditViewRequest) returns (RPCViewsEditViewResponse)

- (void)editViewWithRequest:(RPCViewsEditViewRequest *)request handler:(void(^)(RPCViewsEditViewResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToEditViewWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToEditViewWithRequest:(RPCViewsEditViewRequest *)request handler:(void(^)(RPCViewsEditViewResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"EditView"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCViewsEditViewResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteView(RPCViewsDeleteViewRequest) returns (RPCViewsDeleteViewResponse)

- (void)deleteViewWithRequest:(RPCViewsDeleteViewRequest *)request handler:(void(^)(RPCViewsDeleteViewResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteViewWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeleteViewWithRequest:(RPCViewsDeleteViewRequest *)request handler:(void(^)(RPCViewsDeleteViewResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteView"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCViewsDeleteViewResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetView(RPCViewsGetViewRequest) returns (RPCViewsGetViewResponse)

- (void)getViewWithRequest:(RPCViewsGetViewRequest *)request handler:(void(^)(RPCViewsGetViewResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetViewWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetViewWithRequest:(RPCViewsGetViewRequest *)request handler:(void(^)(RPCViewsGetViewResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetView"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCViewsGetViewResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetViews(RPCViewsGetViewsRequest) returns (RPCViewsGetViewsResponse)

- (void)getViewsWithRequest:(RPCViewsGetViewsRequest *)request handler:(void(^)(RPCViewsGetViewsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetViewsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetViewsWithRequest:(RPCViewsGetViewsRequest *)request handler:(void(^)(RPCViewsGetViewsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetViews"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCViewsGetViewsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SetViewProperties(RPCViewsSetViewPropertiesRequest) returns (RPCViewsSetViewPropertiesResponse)

- (void)setViewPropertiesWithRequest:(RPCViewsSetViewPropertiesRequest *)request handler:(void(^)(RPCViewsSetViewPropertiesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSetViewPropertiesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSetViewPropertiesWithRequest:(RPCViewsSetViewPropertiesRequest *)request handler:(void(^)(RPCViewsSetViewPropertiesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SetViewProperties"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCViewsSetViewPropertiesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteViewProperties(RPCViewsDeleteViewPropertiesRequest) returns (RPCViewsDeleteViewPropertiesResponse)

- (void)deleteViewPropertiesWithRequest:(RPCViewsDeleteViewPropertiesRequest *)request handler:(void(^)(RPCViewsDeleteViewPropertiesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteViewPropertiesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeleteViewPropertiesWithRequest:(RPCViewsDeleteViewPropertiesRequest *)request handler:(void(^)(RPCViewsDeleteViewPropertiesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteViewProperties"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCViewsDeleteViewPropertiesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark PopulateViewFromURL(RPCViewsPopulateViewFromURLRequest) returns (RPCViewsPopulateViewFromURLResponse)

- (void)populateViewFromURLWithRequest:(RPCViewsPopulateViewFromURLRequest *)request handler:(void(^)(RPCViewsPopulateViewFromURLResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToPopulateViewFromURLWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToPopulateViewFromURLWithRequest:(RPCViewsPopulateViewFromURLRequest *)request handler:(void(^)(RPCViewsPopulateViewFromURLResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"PopulateViewFromURL"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCViewsPopulateViewFromURLResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark TransferOwnership(RPCViewsTransferOwnershipRequest) returns (RPCViewsTransferOwnershipResponse)

- (void)transferOwnershipWithRequest:(RPCViewsTransferOwnershipRequest *)request handler:(void(^)(RPCViewsTransferOwnershipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToTransferOwnershipWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToTransferOwnershipWithRequest:(RPCViewsTransferOwnershipRequest *)request handler:(void(^)(RPCViewsTransferOwnershipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"TransferOwnership"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCViewsTransferOwnershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetEditorInviteCode(RPCViewsGetEditorInviteCodeRequest) returns (RPCViewsGetEditorInviteCodeResponse)

- (void)getEditorInviteCodeWithRequest:(RPCViewsGetEditorInviteCodeRequest *)request handler:(void(^)(RPCViewsGetEditorInviteCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetEditorInviteCodeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetEditorInviteCodeWithRequest:(RPCViewsGetEditorInviteCodeRequest *)request handler:(void(^)(RPCViewsGetEditorInviteCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetEditorInviteCode"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCViewsGetEditorInviteCodeResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetEditorInviteInfo(RPCViewsGetEditorInviteInfoRequest) returns (RPCViewsGetEditorInviteInfoResponse)

- (void)getEditorInviteInfoWithRequest:(RPCViewsGetEditorInviteInfoRequest *)request handler:(void(^)(RPCViewsGetEditorInviteInfoResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetEditorInviteInfoWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetEditorInviteInfoWithRequest:(RPCViewsGetEditorInviteInfoRequest *)request handler:(void(^)(RPCViewsGetEditorInviteInfoResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetEditorInviteInfo"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCViewsGetEditorInviteInfoResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AcceptEditorInvite(RPCViewsAcceptEditorInviteRequest) returns (RPCViewsAcceptEditorInviteResponse)

- (void)acceptEditorInviteWithRequest:(RPCViewsAcceptEditorInviteRequest *)request handler:(void(^)(RPCViewsAcceptEditorInviteResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAcceptEditorInviteWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAcceptEditorInviteWithRequest:(RPCViewsAcceptEditorInviteRequest *)request handler:(void(^)(RPCViewsAcceptEditorInviteResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AcceptEditorInvite"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCViewsAcceptEditorInviteResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RemoveEditor(RPCViewsRemoveEditorRequest) returns (RPCViewsRemoveEditorResponse)

- (void)removeEditorWithRequest:(RPCViewsRemoveEditorRequest *)request handler:(void(^)(RPCViewsRemoveEditorResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRemoveEditorWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToRemoveEditorWithRequest:(RPCViewsRemoveEditorRequest *)request handler:(void(^)(RPCViewsRemoveEditorResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RemoveEditor"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCViewsRemoveEditorResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
