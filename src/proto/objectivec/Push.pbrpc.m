#import "Push.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

static NSString *const kPackageName = @"proto";
static NSString *const kServiceName = @"PushService";

@implementation PushService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:kPackageName serviceName:kServiceName]);
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

- (void)registerWithRequest:(PushRegisterRequest *)request handler:(void(^)(PushRegisterResponse *response, NSError *error))handler{
  [[self RPCToRegisterWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToRegisterWithRequest:(PushRegisterRequest *)request handler:(void(^)(PushRegisterResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"Register"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PushRegisterResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SendMessage(PushMessageRequest) returns (PushMessageResponse)

- (void)sendMessageWithRequest:(PushMessageRequest *)request handler:(void(^)(PushMessageResponse *response, NSError *error))handler{
  [[self RPCToSendMessageWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToSendMessageWithRequest:(PushMessageRequest *)request handler:(void(^)(PushMessageResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"SendMessage"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PushMessageResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
