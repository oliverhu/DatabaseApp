//
//  ViewController.m
//  DatabaseApp
//
//  Created by Keqiu Hu on 12/9/15.
//  Copyright © 2015 Keqiu Hu. All rights reserved.
//

#import "ViewController.h"
#import "DatabaseCell.h"

@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Delegates
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"DatabaseCell" forIndexPath:indexPath];
    DatabaseCell *databaseCell = (DatabaseCell *)cell;
    databaseCell.cellLabel.text = @"2";
    return databaseCell;
}

@end
