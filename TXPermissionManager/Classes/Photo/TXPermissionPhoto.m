//
//  TXPermissionPhoto.m
//  Pods-TXPermissionManager_Example
//
//  Created by 张雄 on 2020/8/27.
//

#import "TXPermissionPhoto.h"
#import <Photos/Photos.h>

@implementation TXPermissionPhoto

- (void)requestAuth:(nonnull void (^)(BOOL))completionHandler {
    [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (status == PHAuthorizationStatusAuthorized) {
                !completionHandler ?: completionHandler(YES);
            }else{
                !completionHandler ?: completionHandler(NO);
            }
        });
    }];
}

- (BOOL)checkAuth {
    BOOL isAuth = NO;
    if ([PHPhotoLibrary authorizationStatus] == PHAuthorizationStatusAuthorized) {
        isAuth = YES;
    }
    return isAuth;
}

- (nonnull NSString *)message {
    return  @"访问相册时需要您提供权限，去设置!";
}

@end
