//
//  WMPagingTests.m
//  MercadolibrOS
//
//  Created by William Mora on 19/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "WMPaging.h"

@interface WMPagingTests : XCTestCase

@end

@implementation WMPagingTests

- (void)testPagingShouldBeCreatedWithDefaultLimitByDefault {
	WMPaging *paging = [[WMPaging alloc] init];
	XCTAssertEqual(paging.limit, [NSNumber numberWithInt:20]);
}

- (void)testPagingWithInitParams {
	WMPaging *paging = [[WMPaging alloc] initWithTotal:[NSNumber numberWithInt:100] offset:[NSNumber numberWithInt:10] limit:[NSNumber numberWithInt:10]];
	XCTAssertEqual(paging.total, [NSNumber numberWithInt:100]);
	XCTAssertEqual(paging.offset, [NSNumber numberWithInt:10]);
	XCTAssertEqual(paging.limit, [NSNumber numberWithInt:10]);
}

@end
