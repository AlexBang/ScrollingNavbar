//
//  NavBarSetting.m
//  ScrollingNavbarDemo
//
//  Created by Hao Zheng on 4/20/14.
//  Copyright (c) 2014 Hao Zheng. All rights reserved.
//

#import "NavBarSetting.h"

#define NAVBAR_COLOR [UIColor blackColor]

@implementation NavBarSetting


-(void)setupNavBar:(UINavigationBar *)tmp{
    // Remember to set the navigation bar to be NOT translucent
	[tmp setTranslucent:NO];
	
	if ([tmp respondsToSelector:@selector(setBarTintColor:)]) {
        [tmp setBarTintColor:NAVBAR_COLOR];
    }
	
    // For better behavior set statusbar style to opaque on iOS < 7.0
    if (([[[UIDevice currentDevice] systemVersion] compare:@"7.0" options:NSNumericSearch] == NSOrderedAscending)) {
        // Silence depracation warnings
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque];
#pragma clang diagnostic pop
    }
}

@end
