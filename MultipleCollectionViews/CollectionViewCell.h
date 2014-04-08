//
//  CollectionViewCell.h
//  MultipleCollectionViews
//
//  Created by Shaun Ervine on 8/04/2014.
//  Copyright (c) 2014 Shaun Ervine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) IBOutlet UILabel *label;

@end
