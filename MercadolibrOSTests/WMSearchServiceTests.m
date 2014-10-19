//
//  WMSearchServiceTests.m
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <OHHTTPStubs/OHHTTPStubs.h>
#import "WMSearchService.h"
#import "WMSearch.h"

@interface WMSearchServiceTests : XCTestCase

@end

@implementation WMSearchServiceTests

- (void)setUp {
	[super setUp];
}

- (void)tearDown {
	[super tearDown];
	[OHHTTPStubs removeAllStubs];
}

- (void)mockSuccessResponse {
	[OHHTTPStubs stubRequestsPassingTest: ^BOOL (NSURLRequest *request) {
	    return [request.URL.host isEqualToString:@"api.mercadolibre.com"];
	} withStubResponse: ^OHHTTPStubsResponse *(NSURLRequest *request) {
	    return [OHHTTPStubsResponse responseWithFileAtPath:OHPathForFileInBundle(@"search_success.json", nil)
	                                            statusCode:200 headers:@{ @"Content-Type":@"text/json" }];
	}];
}

- (void)mockFailureResponse {
	[OHHTTPStubs stubRequestsPassingTest: ^BOOL (NSURLRequest *request) {
	    return [request.URL.host isEqualToString:@"api.mercadolibre.com"];
	} withStubResponse: ^OHHTTPStubsResponse *(NSURLRequest *request) {
	    return [OHHTTPStubsResponse responseWithFileAtPath:OHPathForFileInBundle(@"", nil)
	                                            statusCode:400 headers:@{ @"Content-Type":@"text/json" }];
	}];
}

- (void)mockErrorResponse {
	[OHHTTPStubs stubRequestsPassingTest: ^BOOL (NSURLRequest *request) {
	    return [request.URL.host isEqualToString:@"api.mercadolibre.com"];
	} withStubResponse: ^OHHTTPStubsResponse *(NSURLRequest *request) {
	    return [OHHTTPStubsResponse responseWithError:[NSError errorWithDomain:NSURLErrorDomain code:kCFURLErrorNotConnectedToInternet userInfo:nil]];
	}];
}

- (void)testSearchWithQueryShouldReturnASearchInstanceOnRequestSuccess {
	[self mockSuccessResponse];
	XCTestExpectation *expectation = [self expectationWithDescription:@"asynchronous request"];
	[WMSearchService searchWithQuery:@"ipod" paging:nil completionHandler: ^(WMSearch *search, NSError *error) {
	    XCTAssertNotNil(search);
	    [expectation fulfill];
	}];
	[self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testSearchWithQueryShouldReturnASearchInstanceOnRequestFailure {
	[self mockFailureResponse];
	XCTestExpectation *expectation = [self expectationWithDescription:@"asynchronous request"];
	[WMSearchService searchWithQuery:@"ipod" paging:nil completionHandler: ^(WMSearch *search, NSError *error) {
	    XCTAssertNotNil(search);
	    [expectation fulfill];
	}];
	[self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testSearchWithQueryShouldReturnErrorOnRequestError {
	[self mockErrorResponse];
	XCTestExpectation *expectation = [self expectationWithDescription:@"asynchronous request"];
	[WMSearchService searchWithQuery:@"ipod" paging:nil completionHandler: ^(WMSearch *search, NSError *error) {
	    XCTAssertNotNil(error);
	    [expectation fulfill];
	}];
	[self waitForExpectationsWithTimeout:10.0 handler:nil];
}

@end
