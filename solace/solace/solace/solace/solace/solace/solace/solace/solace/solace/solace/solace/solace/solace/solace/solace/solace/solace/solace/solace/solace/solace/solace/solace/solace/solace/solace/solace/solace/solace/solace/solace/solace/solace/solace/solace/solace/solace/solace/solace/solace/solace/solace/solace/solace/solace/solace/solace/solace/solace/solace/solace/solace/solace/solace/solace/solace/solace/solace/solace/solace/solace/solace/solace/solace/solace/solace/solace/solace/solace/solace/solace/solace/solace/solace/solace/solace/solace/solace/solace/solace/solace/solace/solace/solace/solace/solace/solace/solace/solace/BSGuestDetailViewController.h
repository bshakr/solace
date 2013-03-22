//
//  BSGuestDetailViewController.h
//  solace
//
//  Created by Bassem on 14/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSGuestDetailViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *labels;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
