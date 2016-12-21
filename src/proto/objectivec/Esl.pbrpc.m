#import "Esl.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation ESLService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"ESLService"]);
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


#pragma mark IsStaffMember(StringValue) returns (BoolValue)

/**
 * Check if an email belongs to an esl staff member
 * 
 * Only emails ending in @staff.eslgaming.com will
 * result in a positive value
 */
- (void)isStaffMemberWithRequest:(GPBStringValue *)request handler:(void(^)(GPBBoolValue *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToIsStaffMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Check if an email belongs to an esl staff member
 * 
 * Only emails ending in @staff.eslgaming.com will
 * result in a positive value
 */
- (GRPCProtoCall *)RPCToIsStaffMemberWithRequest:(GPBStringValue *)request handler:(void(^)(GPBBoolValue *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"IsStaffMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBBoolValue class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
