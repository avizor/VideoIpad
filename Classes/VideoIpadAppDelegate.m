//
//  VideoIpadAppDelegate.m
//  VideoIpad
//
//  Created by Andrew Vizor on 10/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "VideoIpadAppDelegate.h"
#import "LeftViewController.h"

@implementation VideoIpadAppDelegate

@synthesize window;
@synthesize splitViewController = _splitViewController;
@synthesize leftViewController = _leftViewController;
@synthesize rightViewController = _rightViewController;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
	
	[window addSubview:_splitViewController.view];
    [window makeKeyAndVisible];
    _leftViewController.delegate = _rightViewController;
	
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [window release];	
    self.splitViewController = nil;
    self.leftViewController = nil;
    self.rightViewController = nil;	
    [super dealloc];
}


@end
