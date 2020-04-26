//
//  AppDelegate.m
//  17MediaDemo
//
//  Created by Neal on 2020/4/26.
//  Copyright © 2020 neal812220. All rights reserved.
//

#import "AppDelegate.h"
//#import "HomeViewController.h"
#import "NATabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    HomeViewController *view = [[HomeViewController alloc] init];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    NATabBarController *tabBarController = [[NATabBarController alloc] init];
    
    [self.window setRootViewController:tabBarController];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
