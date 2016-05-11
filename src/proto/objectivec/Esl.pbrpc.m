#import "Esl.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

static NSString *const kPackageName = @"proto";
static NSString *const kServiceName = @"ESLService";

@implementation ESLService

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


#pragma mark IsStaffMember(StringValue) returns (BoolValue)

- (void)isStaffMemberWithRequest:(GPBStringValue *)request handler:(void(^)(GPBBoolValue *response, NSError *error))handler{
  [[self RPCToIsStaffMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToIsStaffMemberWithRequest:(GPBStringValue *)request handler:(void(^)(GPBBoolValue *response, NSError *error))handler{
  return [self RPCToMethod:@"IsStaffMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBBoolValue class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
