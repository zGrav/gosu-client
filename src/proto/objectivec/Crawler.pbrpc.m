#import "Crawler.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation CrawlerService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"CrawlerService"]);
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


#pragma mark GetSiteInfo(RPCCrawlerGetSiteInfoRequest) returns (RPCCrawlerGetSiteInfoResponse)

- (void)getSiteInfoWithRequest:(RPCCrawlerGetSiteInfoRequest *)request handler:(void(^)(RPCCrawlerGetSiteInfoResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetSiteInfoWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetSiteInfoWithRequest:(RPCCrawlerGetSiteInfoRequest *)request handler:(void(^)(RPCCrawlerGetSiteInfoResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetSiteInfo"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RPCCrawlerGetSiteInfoResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
