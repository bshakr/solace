//
//  BSAlertsViewController.m
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSAlertsViewController.h"

@interface BSAlertsViewController ()

@end

@implementation BSAlertsViewController

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
#pragma mark - UITableViewDataSource methods

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 68;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
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
        cell.textLabel.text = @"Pay Rent";
        cell.detailTextLabel.text = @"Apartment 101 \nToday at 8:39am";
        cell.detailTextLabel.numberOfLines = 2;
        UIImage *accessIcon = [UIImage imageNamed:@"alerts-exclamation.png"];
        cell.imageView.image = accessIcon;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    else if(indexPath.row == 1)
    {
        cell.textLabel.text = @"You Have a package";
        cell.detailTextLabel.text = @"Apartment 101 \nYesterday at 10:23pm";
        cell.detailTextLabel.numberOfLines = 2;
        UIImage *accessIcon = [UIImage imageNamed:@"alerts-package.png"];
        cell.imageView.image = accessIcon;
        
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
    }
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0)
    {
        self.detailViewController.time = @"02/27/2013 8:39:03 am";
        self.detailViewController.door = @"Apartment 101";
        self.detailViewController.details = @"iPhone";
    }
    else if(indexPath.row == 1)
    {
        self.detailViewController.time = @"02/26/2013 10:23:03 pm";
        self.detailViewController.door = @"Apartment 101";
        self.detailViewController.details = @"iPhone";
        
    }
    else if(indexPath.row == 2)
    {
        self.detailViewController.time = @"02/25/2013 12:48:39 pm";
        self.detailViewController.door = @"Apartment 101";
        self.detailViewController.details = @"iPhone";
        
    }
    
    [self.navigationController pushViewController:self.detailViewController animated:YES];
}


@end
