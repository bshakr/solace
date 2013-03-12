//
//  BSMainMenuViewController.h
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSAlertsViewController.h"
#import "BSSettingsViewController.h"
#import "BSGuestViewController.h"
#import "BSLogViewController.h"
#import "BSDoorViewController.h"


@interface BSMainMenuViewController : UIViewController <UITabBarControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) NSArray *viewControllers;
@property (strong, nonatomic) UITabBarController *tabBarController;


- (void)initializeTabBar;


@end
