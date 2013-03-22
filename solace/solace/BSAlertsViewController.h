//
//  BSAlertsViewController.h
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSAlertsDetailViewController.h"

@interface BSAlertsViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet BSAlertsDetailViewController *detailViewController;

@end
