//
//  WMHomeViewControllerTests.m
//  MercadolibrOS
//
//  Created by William Mora on 17/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "WMHomeViewController.h"
#import "WMNavigationManager.h"
#import "WMSearchResultsViewController.h"

@interface WMHomeViewControllerTests : XCTestCase {
	@private
	WMHomeViewController *homeViewController;
	UIView *homeView;
}

@end

@implementation WMHomeViewControllerTests

- (void)setUp {
	[super setUp];
	homeViewController = [[WMHomeViewController alloc] init];
	homeView = homeViewController.view;
}

- (void)tearDown {
	[super tearDown];
	[[WMNavigationManager sharedManager] clear];
}

- (void)testViewShouldHaveATitleLabel {
	XCTAssertNotNil(homeViewController.titleLabel);
}

- (void)testTitleShouldNotBeEmpty {
	XCTAssertTrue([homeViewController.titleLabel.text length] > 0);
}

- (void)testViewShouldHaveAQueryTextFIeld {
	XCTAssertNotNil([homeViewController queryTextField]);
}

- (void)testQueryTextFieldShouldHaveAPlaceholder {
	XCTAssertTrue([homeViewController.queryTextField.placeholder length] > 0);
}

- (void)testSearchButtonShouldBeDisabledByDefault {
	XCTAssertFalse([homeViewController.searchButton isEnabled]);
}

- (void)testSearchButtonShouldBeEnabledIfQueryIsNotEmpty {
	homeViewController.queryTextField.text = @"iPod";
	[homeViewController.queryTextField sendActionsForControlEvents:UIControlEventEditingChanged];
	XCTAssertTrue([homeViewController.searchButton isEnabled]);
}

- (void)testSearchButtonShouldBeDisabledIfQueryIsEmpty {
	homeViewController.queryTextField.text = nil;
	[homeViewController.queryTextField sendActionsForControlEvents:UIControlEventEditingChanged];
	XCTAssertFalse([homeViewController.searchButton isEnabled]);
}

- (void)testDidTouchUpInsideSearchButtonShouldAddSearchResultsViewController {
	[homeViewController.searchButton sendActionsForControlEvents:UIControlEventTouchUpInside];
	id searchViewController = [[WMNavigationManager sharedManager] topViewController];
	XCTAssertTrue([searchViewController isKindOfClass:[WMSearchResultsViewController class]]);
}

@end
