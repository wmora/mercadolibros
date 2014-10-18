//
//  WMSearch.h
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WMPaging.h"

@interface WMSearch : NSObject

@property (strong, nonatomic) NSString *query;
@property (strong, nonatomic) WMPaging *paging;

- (id)initWithData:(NSData *)data;

@end
