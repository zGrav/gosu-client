#import "Push.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>



NS_ASSUME_NONNULL_BEGIN

@protocol PushService <NSObject>

#pragma mark Register(PushRegisterRequest) returns (PushRegisterResponse)

- (void)registerWithRequest:(PushRegisterRequest *)request handler:(void(^)(PushRegisterResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRegisterWithRequest:(PushRegisterRequest *)request handler:(void(^)(PushRegisterResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SendMessage(PushMessageRequest) returns (PushMessageResponse)

- (void)sendMessageWithRequest:(PushMessageRequest *)request handler:(void(^)(PushMessageResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSendMessageWithRequest:(PushMessageRequest *)request handler:(void(^)(PushMessageResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface PushService : GRPCProtoService<PushService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
