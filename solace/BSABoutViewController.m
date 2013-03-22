//
//  BSABoutViewController.m
//  solace
//
//  Created by Bassem on 22/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSABoutViewController.h"

@interface BSABoutViewController ()

@end

@implementation BSABoutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Do any additional setup after loading the view from its nib.
}

-(IBAction)dismissAboutView {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
