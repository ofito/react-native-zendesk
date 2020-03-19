//
//  RNZendeskBridge.m
//  RNZendesk
//
//  Created by David Chavez on 24.04.18.
//  Copyright © 2018 David Chavez. All rights reserved.
//

#import "RNZendeskBridge.h"
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_REMAP_MODULE(RNZendesk, RNZendesk, NSObject)

// MARK: - Initialization

RCT_EXTERN_METHOD(initialize:(NSDictionary *)config);

// MARK: - Indentification

RCT_EXTERN_METHOD(identifyJWT:(NSString *)token);
RCT_EXTERN_METHOD(identifyAnonymous:(NSString *)name email:(NSString *)email);

// MARK: - Notifications

RCT_EXTERN_METHOD(registerWithDeviceIdentifier:(NSString *)deviceIdentifier successCallback:(RCTResponseSenderBlock)successCallback errorCallback:(RCTResponseSenderBlock)errorCallback);
RCT_EXTERN_METHOD(unregisterDevice);

// MARK: - UI Methods

RCT_EXTERN_METHOD(showHelpCenter:(NSDictionary *)options);
RCT_EXTERN_METHOD(showNewTicket:(NSDictionary *)options);
RCT_EXTERN_METHOD(showTicket:(NSString *)requestId);
RCT_EXTERN_METHOD(refreshTicket:(NSString *)requestId resultCallback:(RCTResponseSenderBlock)resultCallback);
RCT_EXTERN_METHOD(showTicketList);

// MARK: - Ticket Methods
RCT_EXTERN_METHOD(createTicket:(NSString *)subject desc:(NSString *)desc tags:(NSArray)tags attachments:(NSArray)attachments resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject);

RCT_EXTERN_METHOD(uploadAttachment:(NSString *)path mimeType:(NSString *)mimeType fileName:(NSString *)file resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject)

@end
