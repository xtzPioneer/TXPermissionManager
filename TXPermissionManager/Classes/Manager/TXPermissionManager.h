//
//  TXPermissionManager.h
//  Pods-TXPermissionManager_Example
//
//  Created by 张雄 on 2020/8/27.
//

#import <Foundation/Foundation.h>
#import "TXPermissionProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// 权限管理
@interface TXPermissionManager : NSObject 

///
/// 构建权限管理
/// @param target 权限目标
///
- (instancetype)initWithTarget:(id<TXPermissionProtocol>)target;

///
/// 构建权限管理
/// @param target 权限目标
///
+ (instancetype)permissionWithTarget:(id<TXPermissionProtocol>)target;

///
/// 请求授权
/// @param isAlert 是否弹出Alert
/// @param completionHandler 完成处理回调
///
- (void)requestAuthWithAlert:(BOOL)isAlert completionHandler:(nonnull void (^)(BOOL isAuth))completionHandler;

/// 查询授权
- (BOOL)checkAuth;

// 禁止使用下面方法创建对象
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)copy NS_UNAVAILABLE;
- (instancetype)mutableCopy NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
