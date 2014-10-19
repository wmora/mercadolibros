//
//  WMPaging.h
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WMPaging : NSObject

@property (strong, nonatomic) NSNumber *total;
@property (strong, nonatomic) NSNumber *offset;
@property (strong, nonatomic) NSNumber *limit;

- (id)initWithTotal:(NSNumber *)total offset:(NSNumber *)offset limit:(NSNumber *)limit;

@end
