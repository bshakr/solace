//
//  BSCheckBoxCell.h
//  solace
//
//  Created by Bassem on 24/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSCheckBoxCell : UITableViewCell
{
	UILabel *label;
    UIButton *checkbox;
}


@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) IBOutlet UIButton *checkbox;


@end
