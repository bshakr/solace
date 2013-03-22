//
//  BSSettingsViewController.h
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSSettingsCell.h"
#import "BSSettingsSwitchCell.h"
@interface BSSettingsViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>{
    BSSettingsCell *settingsTableViewCell;
    BSSettingsSwitchCell *settingsSwitchTableViewCell;

}
//@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, assign) IBOutlet BSSettingsCell *settingsTableViewCell;
@property (nonatomic, assign) IBOutlet BSSettingsSwitchCell *settingsSwitchTableViewCell;
@end
