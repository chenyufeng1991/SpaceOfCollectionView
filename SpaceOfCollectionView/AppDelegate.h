//
//  AppDelegate.h
//  SpaceOfCollectionView
//
//  Created by chenyufeng on 6/19/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import <UIKit/UIKit.h>

//定义宏，用于block
#define WeakSelf(weakSelf) __weak __typeof(&*self)weakSelf = self;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

