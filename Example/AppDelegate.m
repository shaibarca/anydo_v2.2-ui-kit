//
//  AppDelegate.m
//  AnyDOv
//
//  Created by shai@any.do on 03/01/2017, using AnimaApp.com.
//  Copyright © 2017 Company Name. All rights reserved.
//

#import "AppDelegate.h"
#import <AnyDOvUIKit/APAnyDOvManager.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [[APAnyDOvManager shared].theme apply];
    self.window = self.window ?: [UIWindow new];
    [self.window setRootViewController:[[APAnyDOvManager shared] initialVC]];
    [self.window makeKeyAndVisible];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end