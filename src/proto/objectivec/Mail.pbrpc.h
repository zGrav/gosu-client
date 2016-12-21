#import "Mail.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Profile.pbobjc.h"
#import "Message.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol MailService <NSObject>

#pragma mark SendEmail(SendEmailRequest) returns (SendEmailResponse)

- (void)sendEmailWithRequest:(SendEmailRequest *)request handler:(void(^)(SendEmailResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSendEmailWithRequest:(SendEmailRequest *)request handler:(void(^)(SendEmailResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SendPushReminder(SendPushReminderRequest) returns (SendPushReminderResponse)

- (void)sendPushReminderWithRequest:(SendPushReminderRequest *)request handler:(void(^)(SendPushReminderResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSendPushReminderWithRequest:(SendPushReminderRequest *)request handler:(void(^)(SendPushReminderResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface MailService : GRPCProtoService<MailService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
