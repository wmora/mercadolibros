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

@interface AppDelegateTests : XCTestCase {
	@private
	AppDelegate *appDelegate;
}

@end

@implementation AppDelegateTests

- (void)setUp {
	[super setUp];
	appDelegate = [[UIApplication sharedApplication] delegate];
	[appDelegate application:[UIApplication sharedApplication] didFinishLaunchingWithOptions:@{}];
}

- (void)testAppDelegate {
	XCTAssertNotNil(appDelegate, @"Delegate not found");
}

- (void)testAppDelegateShouldCreateNavigationController {
	UINavigationController *navigationController = (UINavigationController *)appDelegate.window.rootViewController;
	XCTAssertNotNil(navigationController, @"UINavigationController not found");
}

- (void)testAppDelegateShouldAddHomeViewControllerToNavigationController {
	UINavigationController *navigationController = (UINavigationController *)appDelegate.window.rootViewController;
	WMHomeViewController *homeViewController = (WMHomeViewController *)navigationController.topViewController;
	XCTAssertNotNil(homeViewController, @"WMHomeViewController not found");
}

@end
