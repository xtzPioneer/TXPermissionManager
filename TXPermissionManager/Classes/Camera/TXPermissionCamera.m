//
//  TXPermissionCamera.m
//  Pods-TXPermissionManager_Example
//
//  Created by 张雄 on 2020/8/28.
//

#import "TXPermissionCamera.h"
#import <AVFoundation/AVFoundation.h>

@implementation TXPermissionCamera

- (BOOL)checkAuth {
    BOOL isAuth = NO;
    if ([AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo] == AVAuthorizationStatusAuthorized) {
        isAuth = YES;
    }
    return isAuth;
}

- (nonnull NSString *)message {
    return @"访问相机时需要您提供权限，去设置!";
}

- (void)requestAuth:(nonnull void (^)(BOOL))completionHandler {
    [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        dispatch_async(dispatch_get_main_queue(), ^{
            !completionHandler ?: completionHandler(granted);
        });
    }];
}

@end
