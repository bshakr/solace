//
//  BSAlertsDetailViewController.m
//  solace
//
//  Created by Bassem on 15/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSAlertsDetailViewController.h"

@interface BSAlertsDetailViewController ()

@end

@implementation BSAlertsDetailViewController

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
}
-(void) viewWillAppear:(BOOL)animated{
    self.timeLabel.text = self.time;
    self.doorLabel.text = self.door;
    self.detailsLabel.text = self.details;
    [self.navigationController.topViewController setTitle: self.navTitle];

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
