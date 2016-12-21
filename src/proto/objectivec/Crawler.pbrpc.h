#import "Crawler.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Profile.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol CrawlerService <NSObject>

#pragma mark GetSiteInfo(RPCCrawlerGetSiteInfoRequest) returns (RPCCrawlerGetSiteInfoResponse)

- (void)getSiteInfoWithRequest:(RPCCrawlerGetSiteInfoRequest *)request handler:(void(^)(RPCCrawlerGetSiteInfoResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetSiteInfoWithRequest:(RPCCrawlerGetSiteInfoRequest *)request handler:(void(^)(RPCCrawlerGetSiteInfoResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface CrawlerService : GRPCProtoService<CrawlerService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
