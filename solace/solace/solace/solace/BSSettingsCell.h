//
//  BSSettingsCell.h
//  solace
//
//  Created by Bassem on 15/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSSettingsCell : UITableViewCell {
	UILabel *label;
	UITextField *textField;
}

@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) IBOutlet UITextField *textField;


@end