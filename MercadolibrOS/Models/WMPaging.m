//
//  WMPaging.m
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import "WMPaging.h"

@implementation WMPaging

- (id)init {
	self = [super init];
	if (self) {
		self.limit = [NSNumber numberWithInt:20];
	}
	return self;
}

@end
