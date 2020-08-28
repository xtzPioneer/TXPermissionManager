//
//  TXViewController.m
//  TXPermissionManager
//
//  Created by xtzPioneer on 08/27/2020.
//  Copyright (c) 2020 xtzPioneer. All rights reserved.
//

#import "TXViewController.h"
#import "TXPermissionManager.h"
#import "TXPermissionPhoto.h"
#import "TXPermissionCamera.h"

@interface TXViewController ()

@end

@implementation TXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    TXPermissionManager *photo = [TXPermissionManager permissionWithTarget:TXPermissionPhoto.new];
    [photo requestAuthWithAlert:YES completionHandler:^(BOOL isAuth) {
        if (isAuth) {
            NSLog(@"有相册权限");
        }else {
            NSLog(@"无相册权限");
        }
    }];
    
    TXPermissionManager *camera = [TXPermissionManager permissionWithTarget:TXPermissionCamera.new];
    [camera requestAuthWithAlert:YES completionHandler:^(BOOL isAuth) {
        if (isAuth) {
            NSLog(@"有相机权限");
        }else {
            NSLog(@"无相机权限");
        }
    }];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
