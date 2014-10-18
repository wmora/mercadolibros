//
//  AppDelegateTests.m
//  MercadolibrOS
//
//  Created by William Mora on 17/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "AppDelegate.h"
#import "WMHomeViewController.h"
#import "WMNavigationManager.h"

@interface AppDelegateTests : XCTestCase {
	@private
	AppDelegate *appDelegate;
}

@end

@implementation AppDelegateTests

- (void)setUp {
	[super setUp];
	appDelegate = [[UIApplication sharedApplication] delegate];
	[appDelegate application:[UIApplication sharedApplication] didFinishLaunchingWithOptions:nil];
}

- (void)tearDown {
	[super tearDown];
	[[WMNavigationManager sharedManager] clear];
}

- (void)testAppDelegate {
	XCTAssertNotNil(appDelegate, @"Delegate not found");
}

- (void)testAppDelegateShouldAddViewControllerToNavigationController {
	id homeViewController = [[WMNavigationManager sharedManager] topViewController];
	XCTAssertNotNil(homeViewController);
}

- (void)testAddedViewControllerShouldBeHomeViewController {
	id homeViewController = [[WMNavigationManager sharedManager] topViewController];
	XCTAssert([homeViewController isKindOfClass:[WMHomeViewController class]]);
}

@end
