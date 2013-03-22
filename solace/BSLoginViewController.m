//
//  BSViewController.m
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSLoginViewController.h"
#import "BSABoutViewController.h"
#import "SVProgressHUD.h"
#import "BSAppDelegate.h"
@interface BSLoginViewController ()

@end

@implementation BSLoginViewController

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
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    self.username.text = @"";
    self.password.text = @"";
    self.password.secureTextEntry = YES;
    [self.username becomeFirstResponder];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)showAboutView
{
    BSABoutViewController *aboutViewController = [[BSABoutViewController alloc] init];
    [self presentViewController:aboutViewController animated:YES completion:nil];

}
-(IBAction)loginCheck
{
    [SVProgressHUD show];
    if(self.username.text.length == 0)
    {
        [SVProgressHUD showErrorWithStatus:@"Username is empty"];
    }
    else if(self.password.text.length == 0){
        [SVProgressHUD showErrorWithStatus:@"Password is empty"];    
    }
    else{
        [SVProgressHUD dismiss];
        BSMainMenuViewController *menuViewController = [[BSMainMenuViewController alloc] init];
        [self presentViewController:menuViewController animated:YES completion:nil];
        //BSAppDelegate *delegate = (BSAppDelegate *)[[UIApplication sharedApplication] delegate];
        //delegate.window.rootViewController = delegate.menuViewController;

        //self.window.rootViewController = self.loginViewController;

    }
    
}
@end
