#import "Eventlog.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Profile.pbobjc.h"
#import "Message.pbobjc.h"

@protocol EventLogService <NSObject>

#pragma mark GetLogEntries(RPCEventLogGetLogEntriesRequest) returns (RPCEventLogGetLogEntriesResponse)

- (void)getLogEntriesWithRequest:(RPCEventLogGetLogEntriesRequest *)request handler:(void(^)(RPCEventLogGetLogEntriesResponse *response, NSError *error))handler;

- (ProtoRPC *)RPCToGetLogEntriesWithRequest:(RPCEventLogGetLogEntriesRequest *)request handler:(void(^)(RPCEventLogGetLogEntriesResponse *response, NSError *error))handler;


@end

// Basic service implementation, over gRPC, that only does marshalling and parsing.
@interface EventLogService : ProtoService<EventLogService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
