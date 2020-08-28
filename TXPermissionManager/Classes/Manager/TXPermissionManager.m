//
//  TXPermissionManager.m
//  Pods-TXPermissionManager_Example
//
//  Created by 张雄 on 2020/8/27.
//

#import "TXPermissionManager.h"
#import "TXPermissionManagerCore.h"
#import "TXPermissionAlert.h"

@interface TXPermissionManager ()

/// 核心
@property (nonatomic,strong)TXPermissionManagerCore *core;

@end

@implementation TXPermissionManager

- (instancetype)initWithTarget:(id<TXPermissionProtocol>)target {
    if (self = [super init]) {
        self.core = [TXPermissionManagerCore customWithPermission:target alert:TXPermissionAlert.new];
    }
    return self;
}

+ (instancetype)permissionWithTarget:(id<TXPermissionProtocol>)target {
    return [[self alloc] initWithTarget:target];
}

- (void)requestAuthWithAlert:(BOOL)isAlert completionHandler:(nonnull void (^)(BOOL isAuth))completionHandler {
    [self.core requestAuthWithAlert:isAlert completionHandler:completionHandler];
}

- (BOOL)checkAuth {
    return [self.core checkAuth];
}

@end
