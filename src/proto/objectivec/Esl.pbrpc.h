#import "Esl.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Wrappers.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol ESLService <NSObject>

#pragma mark IsStaffMember(StringValue) returns (BoolValue)

/**
 * Check if an email belongs to an esl staff member
 * 
 * Only emails ending in @staff.eslgaming.com will
 * result in a positive value
 */
- (void)isStaffMemberWithRequest:(GPBStringValue *)request handler:(void(^)(GPBBoolValue *_Nullable response, NSError *_Nullable error))handler;

/**
 * Check if an email belongs to an esl staff member
 * 
 * Only emails ending in @staff.eslgaming.com will
 * result in a positive value
 */
- (GRPCProtoCall *)RPCToIsStaffMemberWithRequest:(GPBStringValue *)request handler:(void(^)(GPBBoolValue *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface ESLService : GRPCProtoService<ESLService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
