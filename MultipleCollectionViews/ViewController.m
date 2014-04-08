//
//  ViewController.m
//  MultipleCollectionViews
//
//  Created by Shaun Ervine on 8/04/2014.
//  Copyright (c) 2014 Shaun Ervine. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

#import <SDWebImage/UIImageView+WebCache.h>

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *firstDataset;
@property (nonatomic, strong) NSMutableArray *secondDataset;
@property (nonatomic, strong) NSMutableArray *thirdDataset;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.firstDataset = [NSMutableArray array];
    
    // build up mock data
    for (int i = 1; i <= 40; i++) {
        NSDictionary *data = @{ @"imageURL" : [NSURL URLWithString:@"https://plus.google.com/u/0/_/focus/photos/public/AIbEiAIAAABDCJb0joG-kMmGJiILdmNhcmRfcGhvdG8qKGJlMjkzZTZiZjhiNjM4MmYwZTJlYzg5YmVkOTJmMDcyMzdlZjAzYjIwAdeRwYO21H_NYvfmJGnjaRxBwN1W?sz=128"],
                                @"title" : [NSString stringWithFormat:@"Title %d", i] };
        [self.firstDataset addObject:data];
    }
    
    self.secondDataset = [NSMutableArray arrayWithArray:self.firstDataset];
    self.thirdDataset = [NSMutableArray arrayWithArray:self.firstDataset];
}

#pragma mark - Collection view datasource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (collectionView == self.firstCollectionView) {
        return self.firstDataset.count;
    } else if (collectionView == self.secondCollectionView) {
        return self.secondDataset.count;
    } else {
        return self.thirdDataset.count;
    }
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];

    NSDictionary *data;
    
    if (collectionView == self.firstCollectionView) {
        data = self.firstDataset[indexPath.row];
    } else if (collectionView == self.secondCollectionView) {
        data = self.secondDataset[indexPath.row];
    } else {
        data = self.thirdDataset[indexPath.row];
    }
    
    cell.label.text = data[@"title"];
    [cell.imageView setImageWithURL:data[@"imageURL"] placeholderImage:[UIImage imageNamed:@"placeholder.jpg"]];
  
    return cell;
}



@end
