//
//  WMPaging.m
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import "WMPaging.h"

@implementation WMPaging

- (id)initWithTotal:(NSNumber *)total offset:(NSNumber *)offset limit:(NSNumber *)limit {
	self = [self init];
	if (self) {
		self.total = total;
		self.offset = offset;
		self.limit = limit;
	}
	return self;
}

- (id)init {
	self = [super init];
	if (self) {
		self.limit = [NSNumber numberWithInt:20];
	}
	return self;
}

@end
