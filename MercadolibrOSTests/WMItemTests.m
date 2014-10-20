//
//  WMItemTests.m
//  MercadolibrOS
//
//  Created by William Mora on 19/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "WMItem.h"

@interface WMItemTests : XCTestCase {
	@private
	NSMutableDictionary *params;
	WMItem *item;
}

@end

@implementation WMItemTests

- (void)setUp {
	[super setUp];
	[self setUpParams];
}

- (void)setUpParams {
	params = [[NSMutableDictionary alloc] init];
}

- (void)createItem {
	item = [[WMItem alloc] initWithParams:params];
}

- (void)testInitWithParamsShouldSetIdIfIncludedInParams {
	[params setValue:@"MLA12345" forKey:@"id"];
	[self createItem];
	XCTAssert([item.id isEqualToString:@"MLA12345"]);
}

- (void)testInitWithParamsShouldSetSiteIdIfIncludedInParams {
	[params setValue:@"MLA" forKey:@"site_id"];
	[self createItem];
	XCTAssert([item.siteId isEqualToString:@"MLA"]);
}

- (void)testInitWithParamsShouldSetTitleIfIncludedInParams {
	[params setValue:@"New iPod" forKey:@"title"];
	[self createItem];
	XCTAssert([item.title isEqualToString:@"New iPod"]);
}

- (void)testInitWithParamsShouldSetPriceIfIncludedInParams {
	[params setValue:[NSNumber numberWithInt:24] forKey:@"price"];
	[self createItem];
	XCTAssertEqual(item.price, [NSNumber numberWithInt:24]);
}

- (void)testInitWithParamsShouldSetOriginalPriceIfIncludedInParams {
	[params setValue:[NSNumber numberWithInt:24] forKey:@"original_price"];
	[self createItem];
	XCTAssertEqual(item.originalPrice, [NSNumber numberWithInt:24]);
}

- (void)testInitWithParamsShouldSetCurrencyIdIfIncludedInParams {
	[params setValue:@"ARS" forKey:@"currency_id"];
	[self createItem];
	XCTAssert([item.currencyId isEqualToString:@"ARS"]);
}

- (void)testInitWithParamsShouldSetAvailableQuantityIfIncludedInParams {
	[params setValue:[NSNumber numberWithInt:24] forKey:@"available_quantity"];
	[self createItem];
	XCTAssertEqual(item.availableQuantity, [NSNumber numberWithInt:24]);
}

- (void)testInitWithParamsShouldSetSoldQuantityIfIncludedInParams {
	[params setValue:[NSNumber numberWithInt:24] forKey:@"sold_quantity"];
	[self createItem];
	XCTAssertEqual(item.soldQuantity, [NSNumber numberWithInt:24]);
}

- (void)testInitWithParamsShouldSetBuyingModeIfIncludedInParams {
	[params setValue:@"buy_it_now" forKey:@"buying_mode"];
	[self createItem];
	XCTAssert([item.buyingMode isEqualToString:@"buy_it_now"]);
}

- (void)testInitWithParamsShouldSetListingTypeIdIfIncludedInParams {
	[params setValue:@"gold_premium" forKey:@"listing_type_id"];
	[self createItem];
	XCTAssert([item.listingTypeId isEqualToString:@"gold_premium"]);
}

- (void)testInitWithParamsShouldSetConditionIfIncludedInParams {
	[params setValue:@"new" forKey:@"condition"];
	[self createItem];
	XCTAssert([item.condition isEqualToString:@"new"]);
}

- (void)testInitWithParamsShouldSetPermalinkIfIncludedInParams {
	[params setValue:@"https://itempermalink" forKey:@"permalink"];
	[self createItem];
	XCTAssert([item.permalink isEqualToString:@"https://itempermalink"]);
}

- (void)testInitWithParamsShouldSetThumbnailIfIncludedInParams {
	[params setValue:@"https://picture.url" forKey:@"thumbnail"];
	[self createItem];
	XCTAssert([item.thumbnail isEqualToString:@"https://picture.url"]);
}

@end
