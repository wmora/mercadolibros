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

+ (void)searchWithQuery:(NSString *)query paging:(WMPaging *)paging completionHandler:(void (^)(WMSearch *search, NSError *error))completionHandler {
	NSURLSessionConfiguration *ephemeralConfigObject = [NSURLSessionConfiguration ephemeralSessionConfiguration];
	NSURLSession *session = [NSURLSession sessionWithConfiguration:ephemeralConfigObject delegate:nil delegateQueue:[NSOperationQueue mainQueue]];

	[[session dataTaskWithURL:[self buildUrlWithQuery:query paging:paging]
	        completionHandler: ^(NSData *data, NSURLResponse *response, NSError *error) {
	    if (error) {
	        completionHandler(nil, error);
	        return;
		}
	    NSInteger statusCode = ((NSHTTPURLResponse *)response).statusCode;
	    if (statusCode >= 200 < 300) {
	        WMSearch *search = [[WMSearch alloc] initWithData:data];
	        completionHandler(search, nil);
	        return;
		}
	    completionHandler(nil, nil);
	}] resume];
}

+ (NSURL *)buildUrlWithQuery:(NSString *)query paging:(WMPaging *)paging {
	if (!paging) {
		paging = [[WMPaging alloc] init];
	}
	NSString *baseUrl = [NSString stringWithFormat:@"https://api.mercadolibre.com/sites/MLA/search"];
	NSString *params = [NSString stringWithFormat:@"q=%@&limit=%d&offset=%d", query, paging.limit.intValue, paging.offset.intValue];
	NSString *url = [NSString stringWithFormat:@"%@?%@", baseUrl, params];
	return [NSURL URLWithString:url];
}

@end
