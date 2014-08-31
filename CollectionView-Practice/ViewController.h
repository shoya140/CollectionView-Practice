//
//  ViewController.h
//  CollectionView-Practice
//
//  Created by ishimaru on 2014/09/01.
//  Copyright (c) 2014年 mrk1869. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
