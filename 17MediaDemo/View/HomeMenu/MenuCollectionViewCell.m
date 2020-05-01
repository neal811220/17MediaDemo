//
//  MenuCollectionViewCell.m
//  17MediaDemo
//
//  Created by Neal on 2020/4/26.
//  Copyright © 2020 neal812220. All rights reserved.
//

#import "MenuCollectionViewCell.h"

@implementation MenuCollectionViewCell


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupMenuButton];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupMenuButton];
    }
    return self;
}

- (void)setupMenuButton {
    
    menuButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    
    [self.contentView addSubview:menuButton];
    
    UIView *parent = menuButton.superview;
        
    menuButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    [menuButton setTitle:@"AAA" forState:normal];
    
    [menuButton setTitleColor:[UIColor systemBlueColor] forState:normal];

    [menuButton.centerYAnchor constraintEqualToAnchor:parent.centerYAnchor].active = YES;
    
    [menuButton.centerXAnchor constraintEqualToAnchor:parent.centerXAnchor].active = YES;
    
    [menuButton.widthAnchor constraintEqualToConstant:parent.frame.size.width].active = YES;

}

@end
