#import "MessageStore.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation MessageService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"MessageService"]);
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


#pragma mark GetMessage(GetMessageRequest) returns (GetMessageResponse)

/**
 * Message store does no validation if user is allowed to load messages for target channel
 */
- (void)getMessageWithRequest:(GetMessageRequest *)request handler:(void(^)(GetMessageResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetMessageWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Message store does no validation if user is allowed to load messages for target channel
 */
- (GRPCProtoCall *)RPCToGetMessageWithRequest:(GetMessageRequest *)request handler:(void(^)(GetMessageResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetMessage"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetMessageResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetMessages(GetMessagesRequest) returns (GetMessagesResponse)

- (void)getMessagesWithRequest:(GetMessagesRequest *)request handler:(void(^)(GetMessagesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetMessagesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetMessagesWithRequest:(GetMessagesRequest *)request handler:(void(^)(GetMessagesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetMessages"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetMessagesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark IndexMessages(IndexMessagesRequest) returns (IndexMessagesResponse)

- (void)indexMessagesWithRequest:(IndexMessagesRequest *)request handler:(void(^)(IndexMessagesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToIndexMessagesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToIndexMessagesWithRequest:(IndexMessagesRequest *)request handler:(void(^)(IndexMessagesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"IndexMessages"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[IndexMessagesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteMessages(DeleteMessagesRequest) returns (DeleteMessagesResponse)

- (void)deleteMessagesWithRequest:(DeleteMessagesRequest *)request handler:(void(^)(DeleteMessagesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteMessagesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeleteMessagesWithRequest:(DeleteMessagesRequest *)request handler:(void(^)(DeleteMessagesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteMessages"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DeleteMessagesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteMessageBatch(DeleteMessageBatchRequest) returns (DeleteMessageBatchResponse)

- (void)deleteMessageBatchWithRequest:(DeleteMessageBatchRequest *)request handler:(void(^)(DeleteMessageBatchResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteMessageBatchWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeleteMessageBatchWithRequest:(DeleteMessageBatchRequest *)request handler:(void(^)(DeleteMessageBatchResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteMessageBatch"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DeleteMessageBatchResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
