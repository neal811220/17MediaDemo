//
//  ContentCollectionViewCell.m
//  17MediaDemo
//
//  Created by Neal on 2020/5/1.
//  Copyright © 2020 neal812220. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "ContentCollectionViewCell.h"

@implementation ContentCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setupContentImageView];
        
        [self setupidLabel];
    }
    return self;
}

- (void)setupidLabel {
    
    _idLabel = [[UILabel alloc]init];
    
    _idLabel.text = @"Test";
    
    _idLabel.textAlignment = NSTextAlignmentCenter;
        
    [self.contentView addSubview:_idLabel];
    
    _idLabel.translatesAutoresizingMaskIntoConstraints = false;
    
    [_idLabel.centerXAnchor constraintEqualToAnchor:self.contentView.centerXAnchor].active = true;
    
    [_idLabel.centerYAnchor constraintEqualToAnchor:self.contentView.centerYAnchor].active = true;
    
    [_idLabel.widthAnchor constraintEqualToConstant:self.contentView.frame.size.width / 3].active = true;
}

- (void)setupContentImageView {
    
    _contentImageView = [[UIImageView alloc]init];
    
    _contentImageView.image = [UIImage imageNamed:@"Icons_32px_Media_Selected"];
    
    [self.contentView addSubview:_contentImageView];
    
    _contentImageView.translatesAutoresizingMaskIntoConstraints = false;
    
    [_contentImageView.topAnchor constraintEqualToAnchor:self.contentView.topAnchor].active = true;
    
    [_contentImageView.leftAnchor constraintEqualToAnchor:self.contentView.leftAnchor].active = true;
    
    [_contentImageView.rightAnchor constraintEqualToAnchor:self.contentView.rightAnchor].active = true;
    
    [_contentImageView.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor].active = true;
}

@end
