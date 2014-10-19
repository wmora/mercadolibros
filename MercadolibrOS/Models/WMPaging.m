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
		self.total = total != nil ? total : self.total;
		self.offset = offset != nil ? offset : self.offset;
		self.limit = limit != nil ? limit : self.limit;
	}
	return self;
}

- (id)init {
	self = [super init];
	if (self) {
		self.total = [NSNumber numberWithInt:0];
		self.limit = [NSNumber numberWithInt:20];
		self.offset = [NSNumber numberWithInt:0];
	}
	return self;
}

@end
