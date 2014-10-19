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

- (void)testPagingShouldBeCreatedWithtDefaultLimit {
	WMPaging *paging = [[WMPaging alloc] init];
	XCTAssertEqual(paging.limit, [NSNumber numberWithInt:20]);
}

- (void)testPagingShouldBeCreatedWithDefaultOffset {
	WMPaging *paging = [[WMPaging alloc] init];
	XCTAssertEqual(paging.offset, [NSNumber numberWithInt:0]);
}

- (void)testPagingShouldBeCreatedWithDefaultTotal {
	WMPaging *paging = [[WMPaging alloc] init];
	XCTAssertEqual(paging.total, [NSNumber numberWithInt:0]);
}

- (void)testPagingWithLimitShouldChangeDefaultValue {
	WMPaging *paging = [[WMPaging alloc] initWithTotal:[NSNumber numberWithInt:100] offset:[NSNumber numberWithInt:10] limit:[NSNumber numberWithInt:10]];
	XCTAssertEqual(paging.limit, [NSNumber numberWithInt:10]);
}

- (void)testPagingWithOffsetShouldChangeDefaultValue {
	WMPaging *paging = [[WMPaging alloc] initWithTotal:[NSNumber numberWithInt:100] offset:[NSNumber numberWithInt:10] limit:[NSNumber numberWithInt:10]];
	XCTAssertEqual(paging.offset, [NSNumber numberWithInt:10]);
}

- (void)testPagingWithTotalShouldChangeDefaultValue {
	WMPaging *paging = [[WMPaging alloc] initWithTotal:[NSNumber numberWithInt:100] offset:[NSNumber numberWithInt:10] limit:[NSNumber numberWithInt:10]];
	XCTAssertEqual(paging.total, [NSNumber numberWithInt:100]);
}

- (void)testInitPagingWithNilLimitShouldKeepDefaultValue {
	WMPaging *paging = [[WMPaging alloc] initWithTotal:nil offset:nil limit:nil];
	XCTAssertEqual(paging.limit, [NSNumber numberWithInt:20]);
}

- (void)testInitPagingWithNilOffsetShouldKeepDefaultValue {
	WMPaging *paging = [[WMPaging alloc] initWithTotal:nil offset:nil limit:nil];
	XCTAssertEqual(paging.offset, [NSNumber numberWithInt:0]);
}

- (void)testInitPagingWithNilTotalShouldKeepDefaultValue {
	WMPaging *paging = [[WMPaging alloc] initWithTotal:nil offset:nil limit:nil];
	XCTAssertEqual(paging.total, [NSNumber numberWithInt:0]);
}

@end
