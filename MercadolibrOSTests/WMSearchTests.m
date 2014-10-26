//
//  WMSearchTests.m
//  MercadolibrOS
//
//  Created by William Mora on 19/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "WMSearch.h"
#import "WMItem.h"
#import "WMSearchService.h"

@interface WMSearchTests : XCTestCase {
	@private
	NSData *validData;
}

@end

@implementation WMSearchTests

- (void)setUp {
	[super setUp];
	NSString *filePath = [[NSBundle bundleForClass:self.class] pathForResource:@"search_success" ofType:@"json"];
	validData = [NSData dataWithContentsOfFile:filePath];
}

- (void)testInitSearchWithValidDataShouldBeCreatedWithQuery {
	WMSearch *search = [[WMSearch alloc] initWithData:validData];
	XCTAssert([search.query isEqualToString:@"ipod"]);
}

- (void)testInitSearchWithValidDataShouldBeCreatedWithPaging {
	WMSearch *search = [[WMSearch alloc] initWithData:validData];
	XCTAssertNotNil(search.paging);
}

- (void)testInitSearchWithValidDataShouldCreateValidPagingTotal {
	WMSearch *search = [[WMSearch alloc] initWithData:validData];
	XCTAssertEqual(search.paging.total, [NSNumber numberWithInteger:1200]);
}

- (void)testInitSearchWithValidDataShouldCreateValidPagingOffset {
	WMSearch *search = [[WMSearch alloc] initWithData:validData];
	XCTAssertEqual(search.paging.offset, [NSNumber numberWithInteger:0]);
}

- (void)testInitSearchWithValidDataShouldCreateValidPagingLimit {
	WMSearch *search = [[WMSearch alloc] initWithData:validData];
	XCTAssertEqual(search.paging.limit, [NSNumber numberWithInteger:10]);
}

- (void)testInitSearchWithValidDataShouldCreateArrayOfResults {
	WMSearch *search = [[WMSearch alloc] initWithData:validData];
	XCTAssertEqual(search.results.count, 10);
}

- (void)testInitSearchWithValidDataShouldCreateArrayOfResultsOfItems {
	WMSearch *search = [[WMSearch alloc] initWithData:validData];
	for (NSObject *item in search.results) {
		XCTAssert([item isKindOfClass:[WMItem class]]);
	}
}

- (void)testInitSearchWithQueryShouldCreateSearchWithQuery {
	WMSearch *search = [[WMSearch alloc] initWithQuery:@"ipod"];
	XCTAssert([search.query isEqualToString:@"ipod"]);
}

- (void)testHasResultsShouldReturnNoIfResultsIsNil {
	WMSearch *search = [[WMSearch alloc] init];
	XCTAssertFalse([search hasResults]);
}

- (void)testHasResultsShouldReturnNoIfResultsIsEmptyArray {
	WMSearch *search = [[WMSearch alloc] init];
	search.results = [[NSMutableArray alloc] initWithCapacity:0];
	XCTAssertFalse([search hasResults]);
}

- (void)testHasResultsShouldReturnYesIfResultsIsNonEmptyArray {
	WMSearch *search = [[WMSearch alloc] init];
	search.results = [[NSMutableArray alloc] init];
	[search.results addObject:@"Object"];
	XCTAssertTrue([search hasResults]);
}

@end
