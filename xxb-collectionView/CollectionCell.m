//
//  CollectionCell.m
//  xxb-collectionView
//
//  Created by xinxibin on 16/1/18.
//  Copyright © 2016年 xinxibin. All rights reserved.
//

#import "CollectionCell.h"

@implementation CollectionCell

- (void)awakeFromNib {
    // Initialization code
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSArray * arrayOfViews = [[NSBundle mainBundle]loadNibNamed:@"CollectionCell" owner:self options:nil];
        
        if (arrayOfViews.count< 1) {
            return nil;
        }
        
        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]) {
            return nil;
        }
        self = [arrayOfViews objectAtIndex:0];
    }
    return self;
}

@end
