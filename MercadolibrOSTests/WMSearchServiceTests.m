//
//  WMSearchServiceTests.m
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "WMSearchService.h"
#import "WMSearch.h"

@interface WMSearchServiceTests : XCTestCase

@end

@implementation WMSearchServiceTests

- (void)setUp {
	[super setUp];
	// Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
	// Put teardown code here. This method is called after the invocation of each test method in the class.
	[super tearDown];
}

- (void)testSearchWithQueryShouldReturnASearchObject {
	WMSearch *search =  [WMSearchService searchWithQuery:@"ipod" paging:nil];
	XCTAssertNotNil(search);
}

@end
