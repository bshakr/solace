//
//  BSLogViewController.m
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSLogViewController.h"

@interface BSLogViewController ()

@end

@implementation BSLogViewController

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
    if(!self.detailViewController)
    {
        self.detailViewController = [[BSLogDetailViewController alloc] initWithNibName:@"BSLogDetailViewController" bundle:[NSBundle mainBundle]];
    }

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
        cell.textLabel.text = @"Kareem Maurice";
        cell.detailTextLabel.text = @"Apartment 101 \nToday at 8:39am";
        cell.detailTextLabel.numberOfLines = 2;
        UIImage *accessIcon = [UIImage imageNamed:@"log-access-granted.png"];
        cell.imageView.image = accessIcon;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    else if(indexPath.row == 1)
    {
        cell.textLabel.text = @"Rick Zarr";
        cell.detailTextLabel.text = @"Apartment 101 \nYesterday at 10:23pm";
        cell.detailTextLabel.numberOfLines = 2;
        UIImage *accessIcon = [UIImage imageNamed:@"log-access-granted.png"];
        cell.imageView.image = accessIcon;

        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    }
    else if(indexPath.row == 2)
    {
        cell.textLabel.text = @"Maintanace";
        cell.detailTextLabel.text = @"Apartment 101 \nFeb 25 at 12:48pm";
        cell.detailTextLabel.numberOfLines = 2;
        UIImage *accessIcon = [UIImage imageNamed:@"log-access-denied.png"];
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
        self.detailViewController.user = @"Karim Maurice";
        self.detailViewController.door = @"Apartment 101";
        self.detailViewController.method = @"iPhone";
    }
    else if(indexPath.row == 1)
    {
        self.detailViewController.time = @"02/26/2013 10:23:03 pm";
        self.detailViewController.user = @"Rick Zarr";
        self.detailViewController.door = @"Apartment 101";
        self.detailViewController.method = @"iPhone";
        
    }
    else if(indexPath.row == 2)
    {
        self.detailViewController.time = @"02/25/2013 12:48:39 pm";
        self.detailViewController.user = @"Maintance";
        self.detailViewController.door = @"Apartment 101";
        self.detailViewController.method = @"iPhone";
        
    }
    
    [self.navigationController pushViewController:self.detailViewController animated:YES];
}



@end
