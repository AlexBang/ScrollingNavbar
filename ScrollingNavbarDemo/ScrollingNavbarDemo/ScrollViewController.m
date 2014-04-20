//
//  ScrollViewController.h
//  ScrollingNavbarDemo
//
//  Created by Hao Zheng on 4/20/14.
//  Copyright (c) 2014 Hao Zheng. All rights reserved.

#import "ScrollViewController.h"
#import "UIViewController+ScrollingNavbar.h"
#import "NavBarSetting.h"

@interface ScrollViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ScrollViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	
    
    NavBarSetting *navb = [[NavBarSetting alloc]init];
    [navb setupNavBar:self.navigationController.navigationBar];
    

	// Let's fake some content
	[self.scrollView setContentSize:CGSizeMake(320, 1540)];
	
	// Just call this line to enable the scrolling navbar
	[self followScrollView:self.scrollView withDelay:60];
	
    
    self.scrollView.delegate = self;

}


- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
	[self showNavBarAnimated:NO];
}

- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView
{
	// This enables the user to scroll down the navbar by tapping the status bar.
	[self showNavbar];
	
	return YES;
}

@end
