//
//  WMNavigationManagerTests.m
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "WMHomeViewController.h"
#import "WMNavigationManager.h"
#import "WMSearchResultsViewController.h"

@interface WMNavigationManagerTests : XCTestCase

@end

@implementation WMNavigationManagerTests

- (void)setUp {
	[super setUp];
}

- (void)tearDown {
	[super tearDown];
	[[WMNavigationManager sharedManager] clear];
}

- (void)testTopViewControllerShouldReturnTopViewControllerInStack {
	XCTAssertNil([[WMNavigationManager sharedManager] topViewController], @"Nothing has been added, so it should be nil");
}

- (void)testNavigateToSearchResultsViewControllerWithQueryShouldAddViewAsTopViewController {
	[[WMNavigationManager sharedManager] navigateToSearchResultsViewControllerWithQuery:nil];
	id topViewController = [[WMNavigationManager sharedManager] topViewController];
	XCTAssert([topViewController isKindOfClass:[WMSearchResultsViewController class]]);
}

- (void)testNavigateToHomeViewControllerShouldAddViewAsTopViewController {
	[[WMNavigationManager sharedManager] navigateToHomeViewController];
	id topViewController = [[WMNavigationManager sharedManager] topViewController];
	XCTAssert([topViewController isKindOfClass:[WMHomeViewController class]]);
}

- (void)testClearShouldRemoveAllViewControllers {
	[[WMNavigationManager sharedManager] navigateToHomeViewController];
	XCTAssertNotNil([[WMNavigationManager sharedManager] topViewController]);

	[[WMNavigationManager sharedManager] clear];
	XCTAssertNil([[WMNavigationManager sharedManager] topViewController]);
}

@end
