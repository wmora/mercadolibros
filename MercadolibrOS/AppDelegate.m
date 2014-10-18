//
//  AppDelegate.m
//  MercadolibrOS
//
//  Created by William Mora on 17/10/14.
//  Copyright (c) 2014 William Mora. All rights reserved.
//

#import "AppDelegate.h"
#import "WMHomeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// Override point for customization after application launch.
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	// Add navigation controller as root view controller
	UINavigationController *navigationController = [[UINavigationController alloc]init];
	self.window.rootViewController = navigationController;
	// Load home view controller
	WMHomeViewController *homeViewController = [[WMHomeViewController alloc] initWithNibName:@"WMHomeViewController" bundle:nil];
	[navigationController pushViewController:homeViewController animated:YES];
	[self.window makeKeyAndVisible];
	return YES;
}

@end
