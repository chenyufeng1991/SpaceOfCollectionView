//
//  CustomCollectionViewCell.m
//  ShowHiddenKeyboard
//
//  Created by chenyufeng on 16/6/4.
//  Copyright © 2016年 chenyufengweb. All rights reserved.
//

#import "CustomCollectionViewCell.h"

@implementation CustomCollectionViewCell

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        [self addSubview:self.imageView];
    }
    return self;
}




@end
