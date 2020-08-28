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

@interface TXViewController ()

@end

@implementation TXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    TXPermissionManager *manager = [TXPermissionManager permissionWithTarget:TXPermissionPhoto.new];
    [manager requestAuthWithAlert:YES completionHandler:^(BOOL isAuth) {
        if (isAuth) {
            NSLog(@"有相册权限");
        }else {
            NSLog(@"无相册权限");
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
