//
//  AMScrollViewController.m
//  ScrollingNavbarDemo
//
//  Created by Andrea Mazzini on 09/11/13.
//  Copyright (c) 2013 Andrea Mazzini. All rights reserved.
//

#import "ScrollViewController.h"
#import "UIViewController+ScrollingNavbar.h"

@interface ScrollViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ScrollViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	

	// Let's fake some content
	[self.scrollView setContentSize:CGSizeMake(320, 1540)];
	
	// Just call this line to enable the scrolling navbar
	//[self followScrollView:self.scrollView withDelay:60];
	
    
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
