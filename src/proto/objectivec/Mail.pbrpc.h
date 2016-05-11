#import "Mail.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Profile.pbobjc.h"
#import "Message.pbobjc.h"

@protocol MailService <NSObject>

#pragma mark SendEmail(SendEmailRequest) returns (SendEmailResponse)

- (void)sendEmailWithRequest:(SendEmailRequest *)request handler:(void(^)(SendEmailResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToSendEmailWithRequest:(SendEmailRequest *)request handler:(void(^)(SendEmailResponse *response, NSError *error))handler;


#pragma mark SendPushReminder(SendPushReminderRequest) returns (SendPushReminderResponse)

- (void)sendPushReminderWithRequest:(SendPushReminderRequest *)request handler:(void(^)(SendPushReminderResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToSendPushReminderWithRequest:(SendPushReminderRequest *)request handler:(void(^)(SendPushReminderResponse *response, NSError *error))handler;


@end

// Basic service implementation, over gRPC, that only does marshalling and parsing.
@interface MailService : ProtoService<MailService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
