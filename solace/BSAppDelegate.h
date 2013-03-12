//
//  BSAppDelegate.h
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSLoginViewController.h"

@class BSLoginViewController;

@interface BSAppDelegate : UIResponder <UIApplicationDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) BSLoginViewController *loginViewController;
//@property (strong, nonatomic) UITabBarController *tabBarController;

@end
