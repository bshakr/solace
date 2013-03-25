//
//  BSSettingsViewController.m
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//
#import "BSLoginViewController.h"
#import "BSSettingsViewController.h"
#import "BSCheckBox.h"
#import "SVProgressHUD.h"

@interface BSSettingsViewController ()
@end

@implementation BSSettingsViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView reloadData];
    
    self.view = self.tableView;



}
- (IBAction)textFieldFinished:(id)sender
{
    //any custom saving actions
    [sender resignFirstResponder];
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
        return 2;
    else if(section == 1)
        return 2;
    else if(section == 2)
        return 1;
    else if(section == 3)
        return 2;
    else if(section == 4)
        return 1;
    else if(section == 5)
        return 1;
    else
        return 0;
        
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 6;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    // The header for the section is the region name -- get this from the region at the section index.
    if(section == 0)
        return @"RFID";
    else if(section == 1)
        return @"Notification";
    else if(section == 2)
        return @"Maximum Log Entries";
    else if(section == 3)
        return @"Security";
    else if(section == 4)
        return @"Building";
    else
        return @"";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    static NSString *SettingsCellIdentifier = @"BSSettingsCell";
    static NSString *SettingsSwitchCellIdentifier = @"BSSettingsSwitchCell";
    static NSString *DefaultCellIdentifier = @"DefaultCell";
    static NSString *CheckBoxCellIdentifier = @"CheckboxCell";
   
    BSCheckBoxCell *checkCell =(BSCheckBoxCell *)[tableView dequeueReusableCellWithIdentifier:CheckBoxCellIdentifier];
    BSSettingsCell *cell = (BSSettingsCell *)[tableView dequeueReusableCellWithIdentifier:SettingsCellIdentifier];
    BSSettingsSwitchCell *switchCell = (BSSettingsSwitchCell *)[tableView dequeueReusableCellWithIdentifier:SettingsSwitchCellIdentifier];
    UITableViewCell *defaultCell = [tableView dequeueReusableCellWithIdentifier:DefaultCellIdentifier];
    
    if (cell == nil) {
        [[NSBundle mainBundle] loadNibNamed:@"BSSettingsCell" owner:self options:nil];
        cell = _settingsTableViewCell;
        [cell.textField setDelegate:self];
        [cell.textField setReturnKeyType:UIReturnKeyDone];
        [cell.textField addTarget:self action:@selector(textFieldFinished:)
                                       forControlEvents:UIControlEventEditingDidEndOnExit];

        _settingsTableViewCell = nil;
    }
    if (switchCell == nil) {
        [[NSBundle mainBundle] loadNibNamed:@"BSSettingsSwitchView" owner:self options:nil];
        switchCell = _settingsSwitchTableViewCell;
        _settingsSwitchTableViewCell = nil;
    }
    if (checkCell == nil) {
        [[NSBundle mainBundle] loadNibNamed:@"BSCheckBoxCell" owner:self options:nil];
        checkCell = _checkBoxCell;
        _checkBoxCell = nil;
    }

    if(defaultCell == nil)
    {
        defaultCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:DefaultCellIdentifier];
    }
        
    if(indexPath.section == 0)
    {
        if (indexPath.row == 0) {
            cell.label.text = @"Key Card";
            //cell.textField.text = ingredient.name;
            cell.textField.placeholder = @"23379711";

            return cell;
        }
        if(indexPath.row == 1)
        {
            checkCell.selectionStyle = UITableViewCellSelectionStyleNone;
            checkCell.label.text = @"Disable Tag";
            [checkCell.checkbox addTarget:self action:@selector(checkboxSelected:) forControlEvents:UIControlEventTouchUpInside];

            return checkCell;
        }

    }
    else if(indexPath.section == 1)
    {
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
    else if(indexPath.section == 2)
    {
        defaultCell.textLabel.text = @"10 Entries";
        defaultCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return  defaultCell;

    }

    else if(indexPath.section == 3)
    {

        if(indexPath.row == 0)
        {

            switchCell.label.text = @"Auto Login";
            return switchCell;

        }
        else if(indexPath.row == 1)
        {

            defaultCell.textLabel.text = @"Change Password";
            defaultCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            return  defaultCell;

        }
        else{
            return defaultCell;
        }
        
    }
    else if(indexPath.section == 4)
    {
        cell.label.text = @"Edit Building";
        cell.textField.placeholder = @"http://zarrhome.net";
        return  cell;
        
    }

    else if(indexPath.section == 5)
    {

        defaultCell.textLabel.text = @"Logout";
        defaultCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return  defaultCell;
        
    }
    

        return cell;

    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 5)
    {
        BSLoginViewController *menuViewController = [[BSLoginViewController alloc] init];
        [self presentViewController:menuViewController animated:YES completion:nil];
    }
}

-(void)checkboxSelected:(id)sender
{
    if([sender isKindOfClass:[BSCheckBox class]] )
    {
        BSCheckBox *checkBox = (BSCheckBox *)sender;
        if(checkBox.checked == NO)
        {
            checkBox.checked = YES;
            [checkBox setImage:[UIImage imageNamed:@"checkbox-checked.png"] forState:UIControlStateNormal];
        }
        else{
            checkBox.checked = NO;
            [checkBox setImage:[UIImage imageNamed:@"checkbox-unchecked.png"] forState:UIControlStateNormal];
        }
        [SVProgressHUD showErrorWithStatus:@"Checkbox changed"];
        
    }
}


@end
