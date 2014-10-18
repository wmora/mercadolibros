//
//  WMHomeViewController.m
//  MercadolibrOS
//
//  Created by William Mora on 17/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import "WMHomeViewController.h"
#import "WMNavigationManager.h"

@interface WMHomeViewController ()

@end

@implementation WMHomeViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view from its nib.
	[self.queryTextField addTarget:self
	                        action:@selector(queryEditingChanged:)
	              forControlEvents:UIControlEventEditingChanged];
}

- (IBAction)queryEditingChanged:(id)sender {
	[self.searchButton setEnabled:[self shouldEnableSearchButton]];
}

- (IBAction)didTouchUpInsideSearchButton:(id)sender {
	[[WMNavigationManager sharedManager] navigateToSearchResultsViewControllerWithQuery:self.queryTextField.text];
}

- (BOOL)shouldEnableSearchButton {
	return self.queryTextField.text.length > 0;
}

@end
