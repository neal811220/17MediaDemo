//
//  NATabBarController.m
//  17MediaDemo
//
//  Created by Neal on 2020/4/26.
//  Copyright © 2020 neal812220. All rights reserved.
//

#import "NATabBarController.h"
#import "HomeViewController.h"
#import "SecondViewController.h"

@interface NATabBarController ()

@end

@implementation NATabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    HomeViewController *home = [HomeViewController new];
    
    SecondViewController *second = [SecondViewController new];
    
    NSArray *controllersArray = @[home, second];
    
    [self setViewControllers:controllersArray];
    
    home.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Home" image:[UIImage imageNamed:@"Icons_32px_Media_Normal"] selectedImage:[UIImage imageNamed:@"Icons_32px_Media_Selected"]];
    
    second.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Second" image:[UIImage imageNamed:@"Icons_32px_Search_Normal"] selectedImage:[UIImage imageNamed:@"Icons_32px_Search2_Selected"]];
}

@end
