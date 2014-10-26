//
//  WMSearch.m
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import "WMSearch.h"
#import "WMPaging.h"
#import "WMItem.h"
#import "WMSearchService.h"

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

		NSArray *results = jsonData[@"results"];
		self.results = [[NSMutableArray alloc] initWithCapacity:results.count];
		for (NSDictionary *result in results) {
			WMItem *item = [[WMItem alloc] initWithParams:result];
			[self.results addObject:item];
		}
	}
	return self;
}

- (id)initWithQuery:(NSString *)query {
	self = [super init];
	if (self) {
		self.query = query;
		self.paging = nil;
		self.results = nil;
	}
	return self;
}

- (BOOL)hasResults {
	return [self.results count] > 0;
}

- (void)loadResults {
	[WMSearchService searchWithQuery:[self query] paging:[self paging] completionHandler:
	 ^(WMSearch *search, NSError *error) {
	    if (error) {
	        if ([self.delegate respondsToSelector:@selector(onSearchFailure:)]) {
	            [self.delegate onSearchFailure:error];
			}
	        return;
		}
	    self.paging = search.paging;
	    [self.paging updateOffset];
	    for (WMItem * item in search.results) {
	        [self.results addObject:item];
		}
	    [self.delegate onSearchSuccess:self];
	}

	];
}

@end
