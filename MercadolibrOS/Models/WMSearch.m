//
//  WMSearch.m
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import "WMSearch.h"
#import "WMPaging.h"

@implementation WMSearch

- (id)initWithData:(NSData *)data {
	self = [super init];
	if (self) {
		NSDictionary *jsonData = [NSJSONSerialization JSONObjectWithData:data
		                                                         options:NSJSONReadingMutableContainers
		                                                           error:nil];
		self.query = (NSString *)jsonData[@"query"];
		NSDictionary *paging = ((NSDictionary *)jsonData[@"paging"]);
		NSNumber *total = (NSNumber *)paging[@"total"];
		NSNumber *offset = (NSNumber *)paging[@"offset"];
		NSNumber *limit = (NSNumber *)paging[@"limit"];
		self.paging = [[WMPaging alloc] initWithTotal:total offset:offset limit:limit];
	}
	return self;
}

@end
