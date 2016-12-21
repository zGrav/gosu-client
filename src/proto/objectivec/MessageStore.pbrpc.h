#import "MessageStore.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Api.pbobjc.h"
#import "Message.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol MessageService <NSObject>

#pragma mark GetMessage(GetMessageRequest) returns (GetMessageResponse)

/**
 * Message store does no validation if user is allowed to load messages for target channel
 */
- (void)getMessageWithRequest:(GetMessageRequest *)request handler:(void(^)(GetMessageResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Message store does no validation if user is allowed to load messages for target channel
 */
- (GRPCProtoCall *)RPCToGetMessageWithRequest:(GetMessageRequest *)request handler:(void(^)(GetMessageResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetMessages(GetMessagesRequest) returns (GetMessagesResponse)

- (void)getMessagesWithRequest:(GetMessagesRequest *)request handler:(void(^)(GetMessagesResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetMessagesWithRequest:(GetMessagesRequest *)request handler:(void(^)(GetMessagesResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark IndexMessages(IndexMessagesRequest) returns (IndexMessagesResponse)

- (void)indexMessagesWithRequest:(IndexMessagesRequest *)request handler:(void(^)(IndexMessagesResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToIndexMessagesWithRequest:(IndexMessagesRequest *)request handler:(void(^)(IndexMessagesResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteMessages(DeleteMessagesRequest) returns (DeleteMessagesResponse)

- (void)deleteMessagesWithRequest:(DeleteMessagesRequest *)request handler:(void(^)(DeleteMessagesResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteMessagesWithRequest:(DeleteMessagesRequest *)request handler:(void(^)(DeleteMessagesResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteMessageBatch(DeleteMessageBatchRequest) returns (DeleteMessageBatchResponse)

- (void)deleteMessageBatchWithRequest:(DeleteMessageBatchRequest *)request handler:(void(^)(DeleteMessageBatchResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteMessageBatchWithRequest:(DeleteMessageBatchRequest *)request handler:(void(^)(DeleteMessageBatchResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface MessageService : GRPCProtoService<MessageService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
