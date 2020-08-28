//
//  TXPermissionProtocol.h
//  Pods-TXPermissionManager_Example
//
//  Created by 张雄 on 2020/8/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 权限协议
@protocol TXPermissionProtocol <NSObject>

@required

///
/// 请求授权
/// @param completionHandler 完成回调
///
- (void)requestAuth:(nonnull void (^)(BOOL isAuth))completionHandler;

/// 查询授权
- (BOOL)checkAuth;

/// 提示语(如:访问相册时需要您提供权限，去设置!)
- (NSString *)message;

// 禁止使用下面方法创建对象
- (instancetype)copy NS_UNAVAILABLE;
- (instancetype)mutableCopy NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
