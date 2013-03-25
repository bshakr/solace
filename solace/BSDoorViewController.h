//
//  BSDoorViewController.h
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSDoorCell.h"
@interface BSDoorViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>
{
    BSDoorCell *settingsTableViewCell;

}
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property BOOL checkBoxSelected;
@property (nonatomic, assign) IBOutlet BSDoorCell *doorCell;

@end
