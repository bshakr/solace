//
//  BSViewController.m
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSLoginViewController.h"
#import "SVProgressHUD.h"

@interface BSLoginViewController ()

@end

@implementation BSLoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.username.text = @"";
    self.password.text = @"";
    [self.username becomeFirstResponder];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
        
    }
    
}
@end
