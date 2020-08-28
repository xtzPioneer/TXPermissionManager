//
//  TXPermissionManagerCore.m
//  Pods-TXPermissionManager_Example
//
//  Created by 张雄 on 2020/8/28.
//

#import "TXPermissionManagerCore.h"

@interface TXPermissionManagerCore ()

/// 权限
@property (nonatomic,strong)id<TXPermissionProtocol> permission;

/// Alert
@property (nonatomic,strong)id<TKPermissionAlertProtocol> alert;

@end

@implementation TXPermissionManagerCore

+ (nonnull instancetype)customWithPermission:(nonnull id<TXPermissionProtocol>)permission alert:(nonnull id<TKPermissionAlertProtocol>)alert {
    return [[self alloc] initWithPermission:permission alert:alert];
}

- (nonnull instancetype)initWithPermission:(nonnull id<TXPermissionProtocol>)permission alert:(nonnull id<TKPermissionAlertProtocol>)alert {
    if (self = [super init]) {
        self.permission = permission;
        self.alert = alert;
    }
    return self;
}

- (BOOL)checkAuth {
    return [self.permission checkAuth];
}

- (void)requestAuthWithAlert:(BOOL)isAlert completionHandler:(nonnull void (^)(BOOL))completionHandler {
    [self.permission requestAuth:^(BOOL isAuth) {
        if (isAuth) {
            !completionHandler ?: completionHandler(isAuth);
        }else {
            !isAlert ?: [self alertWithMessage:self.permission.message];
            !completionHandler ?: completionHandler(isAuth);
        }
    }];
}

///
/// 弹出Alert
/// @param message 提示语(如:访问相册时需要您提供权限，去设置!)
///
- (void)alertWithMessage:(NSString *)message {
    [self.alert alertWithTitle:@"权限提示" message:message leftTitle:@"设置" rightTitle:@"取消"];
}

@end
