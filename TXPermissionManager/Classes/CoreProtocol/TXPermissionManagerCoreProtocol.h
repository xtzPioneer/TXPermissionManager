//
//  TXPermissionManagerCoreProtocol.h
//  Pods-TXPermissionManager_Example
//
//  Created by 张雄 on 2020/8/28.
//

#import <Foundation/Foundation.h>
#import "TXPermissionProtocol.h"
#import "TKPermissionAlertProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// 权限管理核心协议
@protocol TXPermissionManagerCoreProtocol <NSObject>

///
/// 构建权限管理核心
/// @param permission 权限
/// @param alert alert
///
- (nonnull instancetype)initWithPermission:(nonnull id<TXPermissionProtocol>)permission alert:(nonnull id<TKPermissionAlertProtocol>)alert;

///
/// 构建权限管理核心
/// @param permission 权限
/// @param alert alert
///
+ (nonnull instancetype)customWithPermission:(nonnull id<TXPermissionProtocol>)permission alert:(nonnull id<TKPermissionAlertProtocol>)alert;

///
/// 请求授权
/// @param isAlert 是否弹出Alert
/// @param completionHandler 完成回调
///
- (void)requestAuthWithAlert:(BOOL)isAlert completionHandler:(nonnull void (^)(BOOL))completionHandler;

/// 查询授权
- (BOOL)checkAuth;

// 禁止使用下面方法创建对象
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)copy NS_UNAVAILABLE;
- (instancetype)mutableCopy NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
