//
//  BSLogViewController.h
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SSPullToRefresh.h"
#import "BSLogDetailViewController.h"
@interface BSLogViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate, SSPullToRefreshViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet BSLogDetailViewController *detailViewController;
@property (nonatomic, strong) SSPullToRefreshView *pullToRefreshView;

@end
