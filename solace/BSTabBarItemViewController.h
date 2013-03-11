//
//  BSTabBarItemViewController.h
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSTabBarItemViewController : UIViewController
{
    
    IBOutlet UILabel *tabTitle;
}

@property (strong, nonatomic) UILabel *tabTitle;

- (id)initWithTitle:(NSString *)title;

@end
