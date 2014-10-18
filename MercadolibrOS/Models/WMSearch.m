//
//  WMSearch.m
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import "WMSearch.h"

@implementation WMSearch

- (id)initWithData:(NSData *)data {
	self = [super init];
	if (self) {
		NSDictionary *jsonData = [NSJSONSerialization JSONObjectWithData:data
		                                                         options:NSJSONReadingMutableContainers
		                                                           error:nil];
		self.query = (NSString *)[jsonData objectForKey:@"query"];
	}
	return self;
}

@end
