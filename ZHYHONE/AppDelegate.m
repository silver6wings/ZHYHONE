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
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    
    MenuVC *menuVC = [[[MenuVC alloc] init] autorelease];
    menuVC.view.frame = CGRectMake(0, 20, self.window.frame.size.width, self.window.frame.size.height - 20);
    
    UIViewController *rvc = [[[UIViewController alloc] init] autorelease];
    rvc.view.frame = CGRectMake(0, 0, self.window.frame.size.width, self.window.frame.size.height);
    [rvc.view addSubview:menuVC.view];
    
    UIView *barView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.window.frame.size.width, 20)];
    barView.backgroundColor = [UIColor whiteColor];
    [rvc.view addSubview:barView];
    
    self.window.rootViewController = rvc;
     
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application{}

- (void)applicationDidEnterBackground:(UIApplication *)application{}

- (void)applicationWillEnterForeground:(UIApplication *)application{}

- (void)applicationDidBecomeActive:(UIApplication *)application{}

- (void)applicationWillTerminate:(UIApplication *)application{}
 
@end
