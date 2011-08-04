//
//  FreeDesignedTabBar2AppDelegate.h
//  FreeDesignedTabBar2
//
//  Created by プー坊 on 11/08/04.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FreeDesignedTabBar2AppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
