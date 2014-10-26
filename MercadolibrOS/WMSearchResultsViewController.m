//
//  WMSearchResultsViewController.m
//  MercadolibrOS
//
//  Created by William Mora on 18/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import "WMSearchResultsViewController.h"
#import "WMSearch.h"
#import "WMSearchService.h"
#import "WMSearchDelegate.h"

@interface WMSearchResultsViewController ()

@property (weak, nonatomic) IBOutlet UILabel *searchLabel;
@property (strong, nonatomic) WMSearch *search;

@end

@implementation WMSearchResultsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil query:(NSString *)query {
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
		self.search = [[WMSearch alloc] initWithQuery:query];
		self.search.delegate = self;
	}
	return self;
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];

	if (![self.search hasResults]) {
		[self.search loadResults];
	}
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view from its nib.
}

- (void)onSearchSuccess:(WMSearch *)search {
	self.search = search;
	self.searchLabel.text = [self.search.results description];
}

@end
