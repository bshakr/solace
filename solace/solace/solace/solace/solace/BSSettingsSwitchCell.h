//
//  BSSettingsSwitchCell.h
//  solace
//
//  Created by Bassem on 15/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSSettingsSwitchCell : UITableViewCell
{
	UILabel *label;
	UISwitch *leSwitch;
}

@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) IBOutlet UISwitch *leSwitch;

@end
