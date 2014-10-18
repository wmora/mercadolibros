//
//  WMSearchService.h
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WMSearch.h"
#import "WMPaging.h"

@interface WMSearchService : NSObject

+ (void)searchWithQuery:(NSString *)query paging:(WMPaging *)paging completionHandler:(void (^)(WMSearch *search, NSError *error))completionHandler;

@end
