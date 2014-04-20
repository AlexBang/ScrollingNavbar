//
//  AMCollectionViewController.m
//  ScrollingNavbarDemo
//
//  Created by David on 28/12/2013.
//  Copyright (c) 2013 Andrea Mazzini. All rights reserved.
//

#import "CollectionViewController.h"
#import "UIViewController+ScrollingNavbar.h"

@interface CollectionViewController ()

@end

@implementation CollectionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
	// Just call this line to enable the scrolling navbar
	//[self followScrollView:self.collectionView];

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

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 40;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"exampleCell" forIndexPath:indexPath];
    return cell;
}

@end
