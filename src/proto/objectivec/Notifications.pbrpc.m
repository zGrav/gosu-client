#import "Notifications.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation GOSUNotificationService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"proto" serviceName:@"NotificationService"]);
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


#pragma mark GetNotifications(GetNotificationsRequest) returns (GetNotificationsResponse)

- (void)getNotificationsWithRequest:(GOSUGetNotificationsRequest *)request handler:(void(^)(GOSUGetNotificationsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetNotificationsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetNotificationsWithRequest:(GOSUGetNotificationsRequest *)request handler:(void(^)(GOSUGetNotificationsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetNotifications"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GOSUGetNotificationsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteNotifications(DeleteNotificationsRequest) returns (DeleteNotificationsResponse)

- (void)deleteNotificationsWithRequest:(GOSUDeleteNotificationsRequest *)request handler:(void(^)(GOSUDeleteNotificationsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteNotificationsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeleteNotificationsWithRequest:(GOSUDeleteNotificationsRequest *)request handler:(void(^)(GOSUDeleteNotificationsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteNotifications"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GOSUDeleteNotificationsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetPreferences(GetPreferencesRequest) returns (GetPreferencesResponse)

- (void)getPreferencesWithRequest:(GOSUGetPreferencesRequest *)request handler:(void(^)(GOSUGetPreferencesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPreferencesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetPreferencesWithRequest:(GOSUGetPreferencesRequest *)request handler:(void(^)(GOSUGetPreferencesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPreferences"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GOSUGetPreferencesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UpdatePreference(UpdatePreferenceRequest) returns (UpdatePreferenceResponse)

- (void)updatePreferenceWithRequest:(GOSUUpdatePreferenceRequest *)request handler:(void(^)(GOSUUpdatePreferenceResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdatePreferenceWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdatePreferenceWithRequest:(GOSUUpdatePreferenceRequest *)request handler:(void(^)(GOSUUpdatePreferenceResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdatePreference"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GOSUUpdatePreferenceResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RegisterPushToken(RegisterTokenRequest) returns (RegisterTokenResponse)

- (void)registerPushTokenWithRequest:(GOSURegisterTokenRequest *)request handler:(void(^)(GOSURegisterTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRegisterPushTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToRegisterPushTokenWithRequest:(GOSURegisterTokenRequest *)request handler:(void(^)(GOSURegisterTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RegisterPushToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GOSURegisterTokenResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
