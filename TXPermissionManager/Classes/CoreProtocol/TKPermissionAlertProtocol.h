//
//  TKPermissionAlertProtocol.h
//  Pods-TXPermissionManager_Example
//
//  Created by 张雄 on 2020/8/28.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 权限Alert协议
@protocol TKPermissionAlertProtocol <NSObject>

///
/// 弹出Alert
/// @param title 标题
/// @param message 内容
/// @param leftTitle 左边按钮文字
/// @param rightTitle 右边按钮文字
///
- (void)alertWithTitle:(NSString *)title message:(NSString *)message leftTitle:(NSString *)leftTitle rightTitle:(NSString *)rightTitle;

// 禁止使用下面方法创建对象
- (instancetype)copy NS_UNAVAILABLE;
- (instancetype)mutableCopy NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
