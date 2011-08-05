//
//  FreeDesignedTabBar2AppDelegate.m
//  FreeDesignedTabBar2
//
//  Created by プー坊 on 11/08/04.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FreeDesignedTabBar2AppDelegate.h"

#import "TabBarItemView.h"

@implementation FreeDesignedTabBar2AppDelegate


@synthesize window=_window;

@synthesize tabBarController=_tabBarController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    // Add the tab bar controller's current view as a subview of the window

    //self.tabBarController.delegate = self;

    TabBarItemView *tabView0 = [[TabBarItemView alloc] initWithFrame:CGRectMake(0, 0, 160, 48)
                                                       selectedImage:[UIImage imageNamed:@"tab0s.png"]
                                                     unselectedImage:[UIImage imageNamed:@"tab0u.png"]];
    tabView0.tag = 0;
    tabView0.userInteractionEnabled = YES;
    [tabView0 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)]];
    [self.tabBarController.tabBar addSubview:tabView0];

    TabBarItemView *tabView1 = [[TabBarItemView alloc] initWithFrame:CGRectMake(160, 0, 160, 48)
                                                       selectedImage:[UIImage imageNamed:@"tab1s.png"]
                                                     unselectedImage:[UIImage imageNamed:@"tab1u.png"]];
    tabView1.tag = 1;
    tabView1.userInteractionEnabled = YES;
    [tabView1 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)]];
    [self.tabBarController.tabBar addSubview:tabView1];

    _tabViewItems = [[NSArray arrayWithObjects:
                      tabView0,
                      tabView1,
                      nil] retain];

    [tabView0 setSelected:YES];

    [tabView0 release];
    [tabView1 release];

    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_tabViewItems release], _tabViewItems = nil;

    [_window release];
    [_tabBarController release];
    [super dealloc];
}

#pragma mark - UITabBarControllerDelegate
/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

#pragma mark - Touch handling

- (void)handleTapGesture:(UITapGestureRecognizer *)sender
{
    for (TabBarItemView *tabView in _tabViewItems) {
        [tabView setSelected:tabView.tag == sender.view.tag];
    }
    self.tabBarController.selectedIndex = sender.view.tag;
}

@end
