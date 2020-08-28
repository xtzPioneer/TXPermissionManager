#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "TXPermissionCamera.h"
#import "TXPermissionManagerCore.h"
#import "TKPermissionAlertProtocol.h"
#import "TXPermissionManagerCoreProtocol.h"
#import "TXPermissionProtocol.h"
#import "TXPermissionAlert.h"
#import "TXPermissionManager.h"
#import "TXPermissionPhoto.h"

FOUNDATION_EXPORT double TXPermissionManagerVersionNumber;
FOUNDATION_EXPORT const unsigned char TXPermissionManagerVersionString[];

