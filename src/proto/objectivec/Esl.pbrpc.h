#import "Esl.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Wrappers.pbobjc.h"

@protocol ESLService <NSObject>

#pragma mark IsStaffMember(StringValue) returns (BoolValue)

- (void)isStaffMemberWithRequest:(GPBStringValue *)request handler:(void(^)(GPBBoolValue *response, NSError *error))handler;

- (ProtoRPC *)RPCToIsStaffMemberWithRequest:(GPBStringValue *)request handler:(void(^)(GPBBoolValue *response, NSError *error))handler;


@end

// Basic service implementation, over gRPC, that only does marshalling and parsing.
@interface ESLService : ProtoService<ESLService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
