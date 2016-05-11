#import "Push.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>


@protocol PushService <NSObject>

#pragma mark Register(PushRegisterRequest) returns (PushRegisterResponse)

- (void)registerWithRequest:(PushRegisterRequest *)request handler:(void(^)(PushRegisterResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToRegisterWithRequest:(PushRegisterRequest *)request handler:(void(^)(PushRegisterResponse *response, NSError *error))handler;


#pragma mark SendMessage(PushMessageRequest) returns (PushMessageResponse)

- (void)sendMessageWithRequest:(PushMessageRequest *)request handler:(void(^)(PushMessageResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToSendMessageWithRequest:(PushMessageRequest *)request handler:(void(^)(PushMessageResponse *response, NSError *error))handler;


@end

// Basic service implementation, over gRPC, that only does marshalling and parsing.
@interface PushService : ProtoService<PushService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
