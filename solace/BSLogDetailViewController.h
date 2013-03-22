//
//  BSLogDetailViewController.h
//  solace
//
//  Created by Bassem on 12/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSLogDetailViewController : UIViewController
{
}
@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UILabel *userLabel;
@property (strong, nonatomic) IBOutlet UILabel *doorLabel;
@property (strong, nonatomic) IBOutlet UILabel *methodLabel;

@property (strong, nonatomic)     NSString *time;
@property (strong, nonatomic)  NSString *user;
@property (strong, nonatomic)  NSString *door;
@property (strong, nonatomic)  NSString *method;

@property (strong, nonatomic)  NSString *navTitle;

@end
