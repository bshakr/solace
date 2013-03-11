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

    BSTabBarItemViewController *tabItem1 = [[BSTabBarItemViewController alloc] initWithTitle:@"Tab 1"];
    BSTabBarItemViewController *tabItem2 = [[BSTabBarItemViewController alloc] initWithTitle:@"Tab 2"];
    BSTabBarItemViewController *tabItem3 = [[BSTabBarItemViewController alloc] initWithTitle:@"Tab 3"];
    BSTabBarItemViewController *tabItem4 = [[BSTabBarItemViewController alloc] initWithTitle:@"Tab 4"];
    
    UINavigationController *navController1 = [[UINavigationController alloc] initWithRootViewController:tabItem1];
    UINavigationController *navController2 = [[UINavigationController alloc] initWithRootViewController:tabItem2];
    UINavigationController *navController3 = [[UINavigationController alloc] initWithRootViewController:tabItem3];
    UINavigationController *navController4 = [[UINavigationController alloc] initWithRootViewController:tabItem4];
    
    tabItem1.view.backgroundColor = [UIColor yellowColor];
    _tabBarViewController.delegate = self;
    _tabBarViewController.selectedIndex = 0;

    _tabBarViewController.viewControllers = [NSArray arrayWithObjects:navController1, navController2, navController3, navController4, nil];
    [self.view addSubview:_tabBarViewController.view];


}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    
    if (tabBarController.selectedIndex == 0) {
        [((UINavigationController *)viewController) visibleViewController].view.backgroundColor = [UIColor yellowColor];
    }
    else if (tabBarController.selectedIndex == 1) {
        [((UINavigationController *)viewController) visibleViewController].view.backgroundColor = [UIColor redColor];
    }
    else if (tabBarController.selectedIndex == 2) {
        [((UINavigationController *)viewController) visibleViewController].view.backgroundColor = [UIColor blueColor];
    }
    else if (tabBarController.selectedIndex == 3) {
        [((UINavigationController *)viewController) visibleViewController].view.backgroundColor = [UIColor greenColor];
    }
}

@end
