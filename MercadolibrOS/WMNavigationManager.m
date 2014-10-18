//
//  WMNavigationManager.m
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WMNavigationManager.h"
#import "WMHomeViewController.h"
#import "WMSearchResultsViewController.h"

@interface WMNavigationManager ()

@property (strong, nonatomic) UINavigationController *navigationController;

@end

@implementation WMNavigationManager

static WMNavigationManager *sharedNavigationManager = nil;

+ (WMNavigationManager *)sharedManager {
	if (sharedNavigationManager == nil) {
		sharedNavigationManager = [[super alloc] init];
	}
	return sharedNavigationManager;
}

- (id)init {
	self = [super init];
	if (self) {
		self.navigationController = [[UINavigationController alloc] init];
	}
	return self;
}

- (void)clear {
	self.navigationController = nil;
	sharedNavigationManager = nil;
}

- (void)configureRootViewControllerWithDelegate:(AppDelegate *)delegate {
	delegate.window.rootViewController = self.navigationController;
}

- (UIViewController *)topViewController {
	return self.navigationController.topViewController;
}

- (void)navigateToSearchResultsViewControllerWithQuery:(NSString *)query {
	WMSearchResultsViewController *searchResultsViewController = [[WMSearchResultsViewController alloc] initWithNibName:@"WMSearchResultsViewController" bundle:nil];
	[self.navigationController pushViewController:searchResultsViewController animated:YES];
}

- (void)navigateToHomeViewController {
	WMHomeViewController *homeViewController = [[WMHomeViewController alloc] initWithNibName:@"WMHomeViewController" bundle:nil];
	[self.navigationController pushViewController:homeViewController animated:YES];
}

@end
