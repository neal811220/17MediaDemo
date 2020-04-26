//
//  MenuCollectionViewCell.m
//  17MediaDemo
//
//  Created by Neal on 2020/4/26.
//  Copyright © 2020 neal812220. All rights reserved.
//

#import "MenuCollectionViewCell.h"

@implementation MenuCollectionViewCell

- (void)setupMenuButton {
    
    [self.contentView addSubview:menuButton];
    
    menuButton = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [menuButton setTitle:@"AAA" forState:normal];
    
    
}

@end
