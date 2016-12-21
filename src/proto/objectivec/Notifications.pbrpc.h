#import "Notifications.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Any.pbobjc.h"
#import "Api.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol GOSUNotificationService <NSObject>

#pragma mark GetNotifications(GetNotificationsRequest) returns (GetNotificationsResponse)

- (void)getNotificationsWithRequest:(GOSUGetNotificationsRequest *)request handler:(void(^)(GOSUGetNotificationsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetNotificationsWithRequest:(GOSUGetNotificationsRequest *)request handler:(void(^)(GOSUGetNotificationsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteNotifications(DeleteNotificationsRequest) returns (DeleteNotificationsResponse)

- (void)deleteNotificationsWithRequest:(GOSUDeleteNotificationsRequest *)request handler:(void(^)(GOSUDeleteNotificationsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteNotificationsWithRequest:(GOSUDeleteNotificationsRequest *)request handler:(void(^)(GOSUDeleteNotificationsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetPreferences(GetPreferencesRequest) returns (GetPreferencesResponse)

- (void)getPreferencesWithRequest:(GOSUGetPreferencesRequest *)request handler:(void(^)(GOSUGetPreferencesResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetPreferencesWithRequest:(GOSUGetPreferencesRequest *)request handler:(void(^)(GOSUGetPreferencesResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UpdatePreference(UpdatePreferenceRequest) returns (UpdatePreferenceResponse)

- (void)updatePreferenceWithRequest:(GOSUUpdatePreferenceRequest *)request handler:(void(^)(GOSUUpdatePreferenceResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdatePreferenceWithRequest:(GOSUUpdatePreferenceRequest *)request handler:(void(^)(GOSUUpdatePreferenceResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RegisterPushToken(RegisterTokenRequest) returns (RegisterTokenResponse)

- (void)registerPushTokenWithRequest:(GOSURegisterTokenRequest *)request handler:(void(^)(GOSURegisterTokenResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRegisterPushTokenWithRequest:(GOSURegisterTokenRequest *)request handler:(void(^)(GOSURegisterTokenResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GOSUNotificationService : GRPCProtoService<GOSUNotificationService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
