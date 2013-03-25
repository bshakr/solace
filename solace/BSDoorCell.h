//
//  BSDoorCell.h
//  solace
//
//  Created by Bassem on 24/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface BSDoorCell : UITableViewCell
{
	UILabel *label;
	UISwitch *leSwitch;
    UIButton *checkbox;
}


@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) IBOutlet UISwitch *leSwitch;
@property (nonatomic, retain) IBOutlet UIButton *checkbox;

@end
