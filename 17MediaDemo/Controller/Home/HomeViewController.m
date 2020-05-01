//
//  ViewController.m
//  17MediaDemo
//
//  Created by Neal on 2020/4/26.
//  Copyright © 2020 neal812220. All rights reserved.
//

#import "HomeViewController.h"
#import "MenuCollectionViewCell.h"
#import "ContentCollectionViewCell.h"

@interface HomeViewController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

//{
//    UICollectionView *menuCollectionView;
//
//    UICollectionView *contentCollectionView;
//
//}

@property (nonatomic, strong) UICollectionView *menuCollectionView;

@property (nonatomic, strong) UICollectionView *contentCollectionView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupmenuCollectionView];
    
    [self setupContentCollectionView];
    
    // Do any additional setup after loading the view.
}

- (void)setupmenuCollectionView {
   
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    _menuCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) collectionViewLayout:layout];
    
    [layout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    
    _menuCollectionView.delegate = self;
    
    _menuCollectionView.dataSource = self;
    
    [_menuCollectionView registerClass:MenuCollectionViewCell.class forCellWithReuseIdentifier:@"menuCell"];
    
    _menuCollectionView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:_menuCollectionView];
    
    _menuCollectionView.translatesAutoresizingMaskIntoConstraints = false;
            
    [_menuCollectionView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor].active = YES;
    
    [_menuCollectionView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
    
    [_menuCollectionView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
    
    [_menuCollectionView.heightAnchor constraintEqualToConstant:self.view.frame.size.height / 15].active = YES;
    
}

- (void)setupContentCollectionView {
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    
    _contentCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) collectionViewLayout:flowLayout];
    
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    
    [_contentCollectionView setDelegate:self];
    
    [_contentCollectionView setDataSource:self];
    
    _contentCollectionView.translatesAutoresizingMaskIntoConstraints = false;
    
    [_contentCollectionView registerClass:ContentCollectionViewCell.class forCellWithReuseIdentifier:@"contentCell"];
    
    _contentCollectionView.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:_contentCollectionView];
        
    [_contentCollectionView.topAnchor constraintEqualToAnchor:_menuCollectionView.bottomAnchor].active = true;
    
    [_contentCollectionView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = true;
    
    [_contentCollectionView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = true;
    
    [_contentCollectionView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = true;
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    if (collectionView == _menuCollectionView) {
        
        return 10;
        
    } else {
        
        return 20;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if (collectionView == _menuCollectionView) {
        NSString *identifier = @"menuCell";
        
        MenuCollectionViewCell *cell = (MenuCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
        
        if (cell == nil) {
            
            [collectionView registerClass:MenuCollectionViewCell.class forCellWithReuseIdentifier:identifier];
            
            cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
        }
        
        return cell;
        
    } else {
        
        NSString *identifier = @"contentCell";
        
        ContentCollectionViewCell *cell = (ContentCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
        
        if (cell == nil) {
            
            [collectionView registerClass:ContentCollectionViewCell.class forCellWithReuseIdentifier:identifier];
            
            cell = (ContentCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath: indexPath];
        }
        cell.backgroundColor = [UIColor redColor];
        return cell;
        
    }
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if (collectionView == _menuCollectionView) {
        
        return CGSizeMake(self.view.frame.size.width / 3, self.view.frame.size.height / 15);
        
    } else {
        
        return CGSizeMake(self.view.frame.size.width - 20, self.view.frame.size.height / 5);
        
    }
    
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView
                        layout:(UICollectionViewLayout *)collectionViewLayout
        insetForSectionAtIndex:(NSInteger)section {
    
    if (collectionView == _contentCollectionView) {
        
        return UIEdgeInsetsMake(10, 10, 0, 10);
        
    } else {
        
        return UIEdgeInsetsMake(0, 0, 0, 0);
    }
}

//- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
//
//    return 100;
// }

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    
    if (collectionView == _contentCollectionView) {
        
        return 20;
        
    } else {
        
        return 0;
    }
}

@end
