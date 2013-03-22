//
//  BSLogDetailViewController.m
//  solace
//
//  Created by Bassem on 12/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSLogDetailViewController.h"

@interface BSLogDetailViewController ()

@end

@implementation BSLogDetailViewController

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
    self.timeLabel.text = self.time;
    self.userLabel.text = self.user;
    self.doorLabel.text = self.door;
    self.methodLabel.text = self.method;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
