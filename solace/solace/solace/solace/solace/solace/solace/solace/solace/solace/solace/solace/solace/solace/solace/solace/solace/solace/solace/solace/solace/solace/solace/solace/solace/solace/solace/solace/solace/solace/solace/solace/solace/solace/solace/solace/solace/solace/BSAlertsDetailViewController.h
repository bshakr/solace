//
//  BSAlertsDetailViewController.h
//  solace
//
//  Created by Bassem on 15/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSAlertsDetailViewController : UIViewController


@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UILabel *doorLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailsLabel;

@property (strong, nonatomic)     NSString *time;
@property (strong, nonatomic)  NSString *door;
@property (strong, nonatomic)  NSString *details;

@end
