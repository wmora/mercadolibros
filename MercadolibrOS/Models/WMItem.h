//
//  WMItem.h
//  MercadolibrOS
//
//  Created by William Mora on 19/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WMItem : NSObject

@property (strong, nonatomic) NSString *id;
@property (strong, nonatomic) NSString *siteId;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSNumber *price;
@property (strong, nonatomic) NSNumber *originalPrice;
@property (strong, nonatomic) NSString *currencyId;
@property NSInteger *availableQuantity;
@property NSInteger *soldQuantity;
@property (strong, nonatomic) NSString *buyingMode;
@property (strong, nonatomic) NSString *listingTypeId;
@property (strong, nonatomic) NSString *condition;
@property (strong, nonatomic) NSString *permalink;
@property (strong, nonatomic) NSString *thumbnail;

@end
