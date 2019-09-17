//
//  CTMediator+RequestAPI.m
//  RouterSDK
//
//  Created by fengsl on 2019/9/16.
//  Copyright © 2019 fengsl. All rights reserved.
//

#import "CTMediator+RequestAPI.h"

#define kAPIRequest @"APIRequestHandler"

#define kAPIActive @"requestActive"
#define kAPIForgetPasswordCode @"requestForgetPasswordCode"
#define kAPITourist @"requestTourist"
#define kAPIRegister @"requestRegister"
#define kAPILogin @"requestLogin"
#define kAPIUserInfo @"requestUserInfo"
#define kAPIForgetPassword @"requestForgetPassword"
#define kAPIBindPhoneCode @"requestBindPhoneCode"
#define kAPIBindPhone @"requestBindPhone"
#define kAPICreateOrder @"requestCreateOrder"
#define kAPIUploadTransaction @"requestTransaction"

@implementation CTMediator (RequestAPI)

//- (void)startMonitorStatus:(void (^)(CTMediaAFNetworkReachabilityStatus status))block{
//    
//}
//- (void)stopMonitorStatus{
//    
//}

- (id)request:(NSDictionary *)param type:(RequestType)type success:(RequestSuccessAPIBlock)success fail:(RequestFailAPIBlock)fail{
    NSMutableDictionary *parameter = [[NSMutableDictionary alloc]init];
    [parameter setValue:param forKey:@"data"];
    [parameter setValue:success forKey:@"successBlock"];
    [parameter setValue:fail forKey:@"failBlock"];
    switch (type) {
        case ActivateRequest:
            [self performTarget:kAPIRequest action:kAPIActive params:param shouldCacheTarget:NO];
            break;
        case TouristRequest:
            [self performTarget:kAPIRequest action:kAPITourist params:param shouldCacheTarget:NO];
            break;
        case RegisterRequest:
            [self performTarget:kAPIRequest action:kAPIRegister params:param shouldCacheTarget:NO];
            break;
        case LoginRequest:
             [self performTarget:kAPIRequest action:kAPILogin params:param shouldCacheTarget:NO];
            break;
        case UserInfoRequest:
            [self performTarget:kAPIRequest action:kAPIUserInfo params:param shouldCacheTarget:NO];
            break;
        case ForgetPasswordRequest:
              [self performTarget:kAPIRequest action:kAPIForgetPassword params:param shouldCacheTarget:NO];
            break;
        case BindPhoneRequest:
            [self performTarget:kAPIRequest action:kAPIBindPhone params:param shouldCacheTarget:NO];
            break;
        case BindPhoneCodeReuqest:
              [self performTarget:kAPIRequest action:kAPIBindPhoneCode params:param shouldCacheTarget:NO];
            break;
        case CreateOrderRequest:
               [self performTarget:kAPIRequest action:kAPICreateOrder params:param shouldCacheTarget:NO];
            break;
        case UploadTransactionRequest:
               [self performTarget:kAPIRequest action:kAPIUploadTransaction params:param shouldCacheTarget:NO];
            break;
        case ForgetPasswordCodeRequest:
            [self performTarget:kAPIRequest action:kAPIForgetPasswordCode params:parameter shouldCacheTarget:NO];
            break;
        default:
            break;
    }
    return nil;
   
}

@end
