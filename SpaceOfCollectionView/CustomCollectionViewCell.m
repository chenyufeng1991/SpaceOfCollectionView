//
//  CustomCollectionViewCell.m
//  ShowHiddenKeyboard
//
//  Created by chenyufeng on 16/6/4.
//  Copyright © 2016年 chenyufengweb. All rights reserved.
//

#import "CustomCollectionViewCell.h"
#import "Masonry.h"
#import "AppDelegate.h"

@implementation CustomCollectionViewCell

- (instancetype)init
{
    self = [super init];
    if (self) {
        WeakSelf(weakSelf);
        self.backgroundColor = [UIColor redColor];
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        [self addSubview:self.imageView];
        [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(weakSelf);
        }];
    }
    return self;
}

@end
