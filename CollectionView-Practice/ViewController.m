//
//  ViewController.m
//  CollectionView-Practice
//
//  Created by ishimaru on 2014/09/01.
//  Copyright (c) 2014年 mrk1869. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 2;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return 5;
            break;
            
        case 1:
            return 2;
            break;
            
        default:
            break;
    }
    return 0;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    UILabel *sectionLabel = (UILabel *)[cell viewWithTag:1];
    sectionLabel.text = [NSString stringWithFormat:@"section: %d",indexPath.section];
    UILabel *rowLabel = (UILabel *)[cell viewWithTag:2];
    rowLabel.text = [NSString stringWithFormat:@"row: %d", indexPath.row];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Clicked %d-%d",indexPath.section,indexPath.row);
}


@end
