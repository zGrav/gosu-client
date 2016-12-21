#import "Push.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation PushService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"PushService"]);
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


#pragma mark Register(PushRegisterRequest) returns (PushRegisterResponse)

- (void)registerWithRequest:(PushRegisterRequest *)request handler:(void(^)(PushRegisterResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRegisterWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToRegisterWithRequest:(PushRegisterRequest *)request handler:(void(^)(PushRegisterResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Register"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PushRegisterResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SendMessage(PushMessageRequest) returns (PushMessageResponse)

- (void)sendMessageWithRequest:(PushMessageRequest *)request handler:(void(^)(PushMessageResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSendMessageWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSendMessageWithRequest:(PushMessageRequest *)request handler:(void(^)(PushMessageResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SendMessage"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PushMessageResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
