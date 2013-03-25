//
//  BSCheckBoxCell.m
//  solace
//
//  Created by Bassem on 24/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSCheckBoxCell.h"

@implementation BSCheckBoxCell

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
