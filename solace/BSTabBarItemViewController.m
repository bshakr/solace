//
//  BSTabBarItemViewController.m
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSTabBarItemViewController.h"

@interface BSTabBarItemViewController ()

@end

@implementation BSTabBarItemViewController


@synthesize tabTitle;

- (id)initWithTitle:(NSString *)title {
    
    self = [super initWithNibName:@"BSTabBarItemViewController" bundle:nil];
    if (self) {
        // Custom initialization
        
        self.title = title;
    }
    return self;
}


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
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    self.tabTitle.text = self.title;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
