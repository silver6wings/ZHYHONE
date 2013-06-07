//
//  AppDelegate.m
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-7.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "AppDelegate.h"
#import "MenuVC.h"
#import "RootVC.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /*
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.window.rootViewController = [[[RootVC alloc] init] autorelease];
    self.window.rootViewController.view.backgroundColor = [UIColor blueColor];
    
    MenuVC * menuVC = [[[MenuVC alloc] init] autorelease];
    menuVC.view.frame = CGRectMake(0, 0, 1024, 1024);
    [self.window.rootViewController.view addSubview:menuVC.view];
     
    UILabel * lbBETA = [[[UILabel alloc] initWithFrame:CGRectMake(175, 100, 824, 548)] autorelease];
    lbBETA.backgroundColor = [UIColor clearColor];
    lbBETA.font = [UIFont boldSystemFontOfSize:256];
    lbBETA.alpha = 0.2;
    lbBETA.text = @"BETA";
    [self.window.rootViewController.view addSubview:lbBETA];
    */
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.window.rootViewController = [[[MenuVC alloc] init] autorelease];
     
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application{}
- (void)applicationDidEnterBackground:(UIApplication *)application{}
- (void)applicationWillEnterForeground:(UIApplication *)application{}
- (void)applicationDidBecomeActive:(UIApplication *)application{}
- (void)applicationWillTerminate:(UIApplication *)application{}

@end
