//
//  MIZAppDelegate.m
//  ManualViewDemo
//
//  Created by Class on 2/6/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "MIZAppDelegate.h"

@implementation MIZAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    MIZViewController *viewController = [[MIZViewController alloc] initWithNibName:nil bundle:nil];
    [[self window] setRootViewController:viewController];
    [[self window] makeKeyAndVisible];
    
    return YES;
}
	
@end
