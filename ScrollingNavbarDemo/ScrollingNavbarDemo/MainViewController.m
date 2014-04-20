//
//  AMViewController.m
//  ScrollingNavbarDemo
//
//  Created by Andrea on 08/11/13.
//  Copyright (c) 2013 Andrea Mazzini. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
	// Remember to set the navigation bar to be NOT translucent
	[self.navigationController.navigationBar setTranslucent:NO];
	
	if ([self.navigationController.navigationBar respondsToSelector:@selector(setBarTintColor:)]) {
        [self.navigationController.navigationBar setBarTintColor:[UIColor grayColor]];
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
