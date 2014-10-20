//
//  WMItem.m
//  MercadolibrOS
//
//  Created by William Mora on 19/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import "WMItem.h"

@implementation WMItem

- (id)initWithParams:(NSDictionary *)params {
	self = [super init];
	if (self) {
		self.id = params[@"id"];
		self.siteId = params[@"site_id"];
		self.title = params[@"title"];
		self.price = params[@"price"];
		self.originalPrice = params[@"original_price"];
		self.currencyId = params[@"currency_id"];
		self.availableQuantity = params[@"available_quantity"];
		self.soldQuantity = params[@"sold_quantity"];
		self.buyingMode = params[@"buying_mode"];
		self.listingTypeId = params[@"listing_type_id"];
		self.condition = params[@"condition"];
		self.permalink = params[@"permalink"];
		self.thumbnail = params[@"thumbnail"];
	}
	return self;
}

@end
