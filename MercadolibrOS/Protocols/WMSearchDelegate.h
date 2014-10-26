//
//  WMSearchDelegate.h
//  MercadolibrOS
//
//  Created by William Mora on 26/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

@class WMSearch;
@protocol WMSearchDelegate <NSObject>

- (void)onSearchSuccess:(WMSearch *)search;

@optional
- (void)onSearchFailure:(NSError *)error;

@end
