//
//  CustomCollectionViewCell.m
//  ShowHiddenKeyboard
//
//  Created by chenyufeng on 16/6/4.
//  Copyright © 2016年 chenyufengweb. All rights reserved.
//

#import "CustomCollectionViewCell.h"
#import "Masonry.h"


@implementation CustomCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, (SCREEN_WIDTH - 80) / 3, (SCREEN_WIDTH - 80) / 3)];
        [self addSubview:self.imageView];
    }
    return self;
}



@end
