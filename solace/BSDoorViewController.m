//
//  BSDoorViewController.m
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSDoorViewController.h"
#import "SVProgressHUD.h"
@interface BSDoorViewController ()
{
}
@end

@implementation BSDoorViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    if(indexPath.row == 0)
    {
        cell.textLabel.text = @"Main Door";
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        UISwitch *aSwitch = [[UISwitch alloc] init];
        [aSwitch addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
        cell.accessoryView = aSwitch;

    }
    else if(indexPath.row == 1)
    {
        cell.textLabel.text = @"Apartment 101";
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        UISwitch *aSwitch = [[UISwitch alloc] init];
        [aSwitch addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
        cell.accessoryView = aSwitch;
        
    }
    else if(indexPath.row == 2)
    {
        cell.textLabel.text = @"Apartment 102";
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        UISwitch *aSwitch = [[UISwitch alloc] init];
        [aSwitch addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
        cell.accessoryView = aSwitch;

    }

    return cell;
}
-(void)checkboxSelected:(id)sender
{
 [SVProgressHUD showErrorWithStatus:@"Checkbox changed"];           
}
-(void) switchChanged:(id)sender{
 [SVProgressHUD showErrorWithStatus:@"UI Switch changed"];       
}

@end
