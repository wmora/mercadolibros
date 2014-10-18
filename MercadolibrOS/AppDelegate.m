//
//  AppDelegate.m
//  MercadolibrOS
//
//  Created by William Mora on 17/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import "AppDelegate.h"
#import "WMHomeViewController.h"
#import "WMNavigationManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// Override point for customization after application launch.
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	[[WMNavigationManager sharedManager] configureRootViewControllerWithDelegate:self];
	[[WMNavigationManager sharedManager] navigateToHomeViewController];
	[self.window makeKeyAndVisible];
	return YES;
}

@end
