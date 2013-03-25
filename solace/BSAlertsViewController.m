//
//  BSAlertsViewController.m
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSAlertsViewController.h"

@interface BSAlertsViewController ()<UISearchDisplayDelegate>
@property (nonatomic, strong) UISearchBar *searchBar;
@property (nonatomic, strong) UISearchDisplayController *searchController;
@property (nonatomic, strong) NSMutableArray *searchResults;

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
    [self setupSearchBar];
    self.searchResults = [NSMutableArray array];

    if(!self.detailViewController)
    {
        self.detailViewController = [[BSAlertsDetailViewController alloc] initWithNibName:@"BSAlertsDetailViewController" bundle:[NSBundle mainBundle]];
    }
    
    self.pullToRefreshView = [[SSPullToRefreshView alloc] initWithScrollView:self.tableView delegate:self];

}
-(void) setupSearchBar
{
    self.searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    self.tableView.tableHeaderView = self.searchBar;
    
    self.searchController = [[UISearchDisplayController alloc] initWithSearchBar:self.searchBar contentsController:self];
    self.searchController.searchResultsDataSource = self;
    self.searchController.searchResultsDelegate = self;
    self.searchController.delegate = self;
    CGPoint offset = CGPointMake(0, self.searchBar.frame.size.height);
    self.tableView.contentOffset = offset;
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - SSPullToRefresh

-(void) refresh
{
    [self.pullToRefreshView startLoading];
    double delayInSeconds = 2.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_queue_t backgroundQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_after(popTime, backgroundQueue, ^(void){
        [self.pullToRefreshView finishLoading];
    });
}

-(void) pullToRefreshViewDidStartLoading:(SSPullToRefreshView *)view{
    [self refresh];
}


#pragma makr - Search

- (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    return YES;
}

#pragma mark - UITableViewDataSource methods

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 68;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(tableView == self.tableView)
    {
        return 2;
    } else{
        return self.searchResults.count;
    }

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
        self.detailViewController.navTitle = @"Pay Rent";


    }
    else if(indexPath.row == 1)
    {
        self.detailViewController.time = @"02/26/2013 10:23:03 pm";
        self.detailViewController.door = @"Apartment 101";
        self.detailViewController.details = @"iPhone";
        self.detailViewController.navTitle = @"You have a package";
    }
    else if(indexPath.row == 2)
    {
        self.detailViewController.time = @"02/25/2013 12:48:39 pm";
        self.detailViewController.door = @"Apartment 101";
        self.detailViewController.details = @"iPhone";
        self.detailViewController.navTitle = @"You have a package";

    }
    
    [self.navigationController pushViewController:self.detailViewController animated:YES];
}


@end
