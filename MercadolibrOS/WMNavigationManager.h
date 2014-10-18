//
//  WMNavigationManager.h
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"

@interface WMNavigationManager : NSObject

+ (WMNavigationManager *)sharedManager;

- (UIViewController *)topViewController;

- (void)configureRootViewControllerWithDelegate:(AppDelegate *)delegate;

- (void)navigateToSearchResultsViewControllerWithQuery:(NSString *)query;
- (void)navigateToHomeViewController;

- (void)clear;

@end
