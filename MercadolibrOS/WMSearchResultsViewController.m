//
//  WMSearchResultsViewController.m
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import "WMSearchResultsViewController.h"

@interface WMSearchResultsViewController ()

@property (strong, nonatomic) NSString *query;

@end

@implementation WMSearchResultsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil query:(NSString *)query {
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
		self.query = query;
	}
	return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
