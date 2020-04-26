//
//  ViewController.m
//  17MediaDemo
//
//  Created by Neal on 2020/4/26.
//  Copyright © 2020 neal812220. All rights reserved.
//

#import "HomeViewController.h"
#import "MenuCollectionViewCell.h"

@interface HomeViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

{
    UICollectionView *menuCollectionView;
}

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Do any additional setup after loading the view.
}

- (void)setupmenuCollectionView {
    
    [self.view addSubview:menuCollectionView];
    
    menuCollectionView.delegate = self;
    
    menuCollectionView.dataSource = self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *identifier = @"menuCell";
    
    MenuCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    if (cell == nil) {
        
        [collectionView registerClass:MenuCollectionViewCell.class forCellWithReuseIdentifier:identifier];
        
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    }
    
    
    
    return cell;
}

@end
