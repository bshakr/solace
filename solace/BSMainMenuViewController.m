//
//  BSMainMenuViewController.m
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSMainMenuViewController.h"
#define IS_IPHONE_5 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )

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
    _tabBarViewController = [[UITabBarController alloc] init];

    CGSize screenSize = [UIScreen mainScreen].bounds.size;

    CGRect screenBounds;
    if( IS_IPHONE_5 )
    {
        screenBounds = CGRectMake(0, 20, screenSize.width, screenSize.height);
        _tabBarViewController.view.bounds = screenBounds;

    }
    else
    {
        screenBounds = CGRectMake(0, 0, screenSize.width, screenSize.height + 140);
        _tabBarViewController.view.bounds = screenBounds;


    }
    BSDoorViewController *doorController = [[BSDoorViewController alloc] init];
    BSLogViewController *logController = [[BSLogViewController alloc] init];
    BSGuestViewController *guestController = [[BSGuestViewController alloc] init];
    BSAlertsViewController *alertsController = [[BSAlertsViewController alloc] init];
    BSSettingsViewController *settingsController = [[BSSettingsViewController alloc] init];
    
    
    
    UINavigationController *navController1 = [[UINavigationController alloc] initWithRootViewController:doorController];
    UINavigationController *navController2 = [[UINavigationController alloc] initWithRootViewController:logController];
    UINavigationController *navController3 = [[UINavigationController alloc] initWithRootViewController:guestController];
    UINavigationController *navController4 = [[UINavigationController alloc] initWithRootViewController:alertsController];
    UINavigationController *navController5 = [[UINavigationController alloc] initWithRootViewController:settingsController];
    _tabBarViewController.delegate = self;
    _tabBarViewController.selectedIndex = 0;
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

    _tabBarViewController.viewControllers = [NSArray arrayWithObjects:navController1, navController2, navController3, navController4, navController5, nil];
    [self.view addSubview:_tabBarViewController.view];


}

@end
