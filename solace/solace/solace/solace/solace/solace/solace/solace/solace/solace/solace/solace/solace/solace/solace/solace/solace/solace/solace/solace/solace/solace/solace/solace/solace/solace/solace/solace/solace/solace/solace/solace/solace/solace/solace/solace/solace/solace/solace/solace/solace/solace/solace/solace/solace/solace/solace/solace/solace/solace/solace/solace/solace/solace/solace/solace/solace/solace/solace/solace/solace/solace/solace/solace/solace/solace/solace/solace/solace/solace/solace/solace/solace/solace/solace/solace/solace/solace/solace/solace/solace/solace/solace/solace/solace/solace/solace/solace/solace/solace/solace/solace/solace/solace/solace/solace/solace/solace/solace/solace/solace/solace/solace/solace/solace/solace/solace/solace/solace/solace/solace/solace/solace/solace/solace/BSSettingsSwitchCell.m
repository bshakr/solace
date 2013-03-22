//
//  BSSettingsSwitchCell.m
//  solace
//
//  Created by Bassem on 15/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSSettingsSwitchCell.h"

@implementation BSSettingsSwitchCell
@synthesize label, leSwitch;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
