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

@interface WMHomeViewControllerTests : XCTestCase {
	@private
	WMHomeViewController *homeViewController;
}

@end

@implementation WMHomeViewControllerTests

- (void)setUp {
	[super setUp];
	// Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
	// Put teardown code here. This method is called after the invocation of each test method in the class.
	[super tearDown];
}

- (void)testShouldHaveQueryTextField {
	// This is an example of a functional test case.
	XCTFail(@"%s not implemented", __PRETTY_FUNCTION__);
}

@end
