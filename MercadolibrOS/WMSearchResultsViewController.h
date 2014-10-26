//
//  WMSearchResultsViewController.h
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WMSearchDelegate.h"

@interface WMSearchResultsViewController : UIViewController <WMSearchDelegate>

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil query:(NSString *)query;

@end
