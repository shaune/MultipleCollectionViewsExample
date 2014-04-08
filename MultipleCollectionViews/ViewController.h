//
//  ViewController.h
//  MultipleCollectionViews
//
//  Created by Shaun Ervine on 8/04/2014.
//  Copyright (c) 2014 Shaun Ervine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong) IBOutlet UICollectionView *firstCollectionView;
@property (nonatomic, strong) IBOutlet UICollectionView *secondCollectionView;
@property (nonatomic, strong) IBOutlet UICollectionView *thirdCollectionView;

@end
