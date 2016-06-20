//
//  AppDelegate.h
//  ShowHiddenKeyboard
//
//  Created by chenyufeng on 16/6/4.
//  Copyright © 2016年 chenyufengweb. All rights reserved.
//

#import <UIKit/UIKit.h>

//定义宏，用于block
#define WeakSelf(weakSelf) __weak __typeof(&*self)weakSelf = self;

typedef NS_ENUM(NSInteger,KeyBoardState){

    KeyboardHidden = 0,
    KeyboardShowing
};

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

