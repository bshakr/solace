//
//  BSMainMenuViewController.m
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSMainMenuViewController.h"

@interface BSMainMenuViewController ()

@end

@implementation BSMainMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initializeTabBar];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) initializeTabBar
{
    self.tabBarController = [[UITabBarController alloc] init];


    BSDoorViewController *doorController = [[BSDoorViewController alloc] initWithNibName:@"BSDoorViewController" bundle:nil];
    BSLogViewController *logController = [[BSLogViewController alloc] initWithNibName:@"BSLogViewController" bundle:nil];
    BSGuestViewController *guestController = [[BSGuestViewController alloc] initWithNibName:@"BSGuestViewController" bundle:nil];
    BSAlertsViewController *alertsController = [[BSAlertsViewController alloc] initWithNibName:@"BSAlertsViewController" bundle:nil];
    BSSettingsViewController *settingsController = [[BSSettingsViewController alloc] initWithNibName:@"BSSettingsViewController" bundle:nil];
    
    
    
    UINavigationController *navController1 = [[UINavigationController alloc] initWithRootViewController: doorController];
    UINavigationController *navController2 = [[UINavigationController alloc] initWithRootViewController: logController];
    UINavigationController *navController3 = [[UINavigationController alloc] initWithRootViewController: guestController];
    UINavigationController *navController4 = [[UINavigationController alloc] initWithRootViewController: alertsController];
    UINavigationController *navController5 = [[UINavigationController alloc] initWithRootViewController: settingsController];
    
    
    
    [navController1 setTitle:@"Doors"];
    [navController1.topViewController setTitle:@"Doors"];
    
    [navController2 setTitle:@"Log"];
    [navController2.topViewController setTitle:@"Log"];
    
    [navController3 setTitle:@"Guests"];
    [navController3.topViewController setTitle:@"Guests"];
    
    [navController4 setTitle:@"Alerts"];
    [navController4.topViewController setTitle:@"Alerts"];
    
    [navController5 setTitle:@"Settings"];
    [navController5.topViewController setTitle:@"Settings"];
    
    UIImage *doorsIcon = [UIImage imageNamed:@"icon-doors.png"];
    UIImage *doorsIconSelected = [UIImage imageNamed:@"icon-highlighted-doors.png"];
    [navController1.tabBarItem setFinishedSelectedImage:doorsIconSelected withFinishedUnselectedImage:doorsIcon];
    
    
    UIImage *logIcon = [UIImage imageNamed:@"icon-log.png"];
    UIImage *logIconSelected = [UIImage imageNamed:@"icon-highlighted-log.png"];
    [navController2.tabBarItem setFinishedSelectedImage:logIconSelected withFinishedUnselectedImage:logIcon];
    
    
    UIImage *guestsIcon = [UIImage imageNamed:@"icon-guests.png"];
    UIImage *guestsIconSelected = [UIImage imageNamed:@"icon-highlighted-guests.png"];
    [navController3.tabBarItem setFinishedSelectedImage:guestsIconSelected withFinishedUnselectedImage:guestsIcon];
    
    UIImage *alertsIcon = [UIImage imageNamed:@"icon-alerts.png"];
    UIImage *alertsIconSelected = [UIImage imageNamed:@"icon-highlighted-alerts.png"];
    [navController4.tabBarItem setFinishedSelectedImage:alertsIconSelected withFinishedUnselectedImage:alertsIcon];
    
    UIImage *settingsIcon = [UIImage imageNamed:@"icon-settings.png"];
    UIImage *settingsIconSelected = [UIImage imageNamed:@"icon-highlighted-settings.png"];
    [navController5.tabBarItem setFinishedSelectedImage:settingsIconSelected withFinishedUnselectedImage:settingsIcon];
    
    self.viewControllers = [[NSArray alloc] initWithObjects:navController1, navController2, navController3, navController4, navController5, nil];
    
    self.tabBarController = [[UITabBarController alloc] init];
    
    
    [self.tabBarController setViewControllers:self.viewControllers];
    

     CGSize screenSize = [UIScreen mainScreen].bounds.size;
    CGRect screenBounds;
    screenBounds = CGRectMake(0, 0, screenSize.width, screenSize.height);
    self.view.bounds = screenBounds;
    [self.view addSubview:self.tabBarController.view];



}

@end
