#import "Eventlog.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

static NSString *const kPackageName = @"proto";
static NSString *const kServiceName = @"EventLogService";

@implementation EventLogService

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


#pragma mark GetLogEntries(RPCEventLogGetLogEntriesRequest) returns (RPCEventLogGetLogEntriesResponse)

- (void)getLogEntriesWithRequest:(RPCEventLogGetLogEntriesRequest *)request handler:(void(^)(RPCEventLogGetLogEntriesResponse *response, NSError *error))handler{
  [[self RPCToGetLogEntriesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetLogEntriesWithRequest:(RPCEventLogGetLogEntriesRequest *)request handler:(void(^)(RPCEventLogGetLogEntriesResponse *response, NSError *error))handler{
  return [self RPCToMethod:@"GetLogEntries"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCEventLogGetLogEntriesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
