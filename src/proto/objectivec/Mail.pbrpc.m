#import "Mail.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation MailService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"MailService"]);
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


#pragma mark SendEmail(SendEmailRequest) returns (SendEmailResponse)

- (void)sendEmailWithRequest:(SendEmailRequest *)request handler:(void(^)(SendEmailResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSendEmailWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSendEmailWithRequest:(SendEmailRequest *)request handler:(void(^)(SendEmailResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SendEmail"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[SendEmailResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SendPushReminder(SendPushReminderRequest) returns (SendPushReminderResponse)

- (void)sendPushReminderWithRequest:(SendPushReminderRequest *)request handler:(void(^)(SendPushReminderResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSendPushReminderWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSendPushReminderWithRequest:(SendPushReminderRequest *)request handler:(void(^)(SendPushReminderResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SendPushReminder"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[SendPushReminderResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
