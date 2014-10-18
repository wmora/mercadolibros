//
//  WMSearchService.m
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import "WMSearchService.h"
#import "WMSearch.h"
#import "WMPaging.h"

@implementation WMSearchService

+ (WMSearch *)searchWithQuery:(NSString *)query paging:(WMPaging *)paging {
	return [[WMSearch alloc] init];
}

@end
