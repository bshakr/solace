//
//  BSSettingsViewController.m
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSSettingsViewController.h"
@interface BSSettingsViewController ()
@end

@implementation BSSettingsViewController
/**
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
**/
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView reloadData];
    
    self.view = self.tableView;

	self.tableView.allowsSelection = NO;
	self.tableView.allowsSelectionDuringEditing = NO;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDataSource methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0)
        return 1;
    else if(section == 1)
        return 2;
    else if(section == 2)
        return 3;
    else
        return 0;
        
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    // The header for the section is the region name -- get this from the region at the section index.
    if(section == 0)
        return @"RFID";
    else if(section == 1)
        return @"Notification";
    else if(section == 2)
        return @"Maximum Log Entries";
    else
        return @"";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    static NSString *SettingsCellIdentifier = @"BSSettingsCell";
    static NSString *SettingsSwitchCellIdentifier = @"BSSettingsSwitchCell";
    BSSettingsCell *cell = (BSSettingsCell *)[tableView dequeueReusableCellWithIdentifier:SettingsCellIdentifier];
    BSSettingsSwitchCell *switchCell = (BSSettingsSwitchCell *)[tableView dequeueReusableCellWithIdentifier:SettingsSwitchCellIdentifier];
    if(indexPath.section == 0)
    {
        if (cell == nil) {
            [[NSBundle mainBundle] loadNibNamed:@"BSSettingsCell" owner:self options:nil];
            cell = _settingsTableViewCell;
            _settingsTableViewCell = nil;
        }
        if (indexPath.row == 0) {
            cell.label.text = @"RFID";
            //cell.textField.text = ingredient.name;
            cell.textField.placeholder = @"23379711";
        }
        return cell;
    }
    else if(indexPath.section == 1)
    {
        if (switchCell == nil) {
            [[NSBundle mainBundle] loadNibNamed:@"BSSettingsSwitchView" owner:self options:nil];
            switchCell = _settingsSwitchTableViewCell;
            _settingsSwitchTableViewCell = nil;
        }
        if(indexPath.row == 0)
        {
            switchCell.label.text = @"Email";
            
        }
        else if(indexPath.row == 1)
        {
            switchCell.label.text = @"Text";
        }
        return switchCell;
    }
    else
    {
        if (cell == nil) {
            [[NSBundle mainBundle] loadNibNamed:@"BSSettingsCell" owner:self options:nil];
            cell = _settingsTableViewCell;
            _settingsTableViewCell = nil;
        }

        return cell;
    }

    
}


@end
