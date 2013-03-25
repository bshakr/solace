//
//  BSDoorViewController.m
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSDoorViewController.h"
#import "SVProgressHUD.h"
#import "BSCheckBox.h"
@interface BSDoorViewController ()
{

}
@end

@implementation BSDoorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization



    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma — 
#pragma mark - UITableViewDataSource methods

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 68;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *doorCellIdentifier = @"BSDoorCell";

    BSDoorCell *doorCell = (BSDoorCell *)[tableView dequeueReusableCellWithIdentifier:doorCellIdentifier];

    if(doorCell == nil)
    {
        [[NSBundle mainBundle] loadNibNamed:@"BSDoorCell" owner:self options:nil];
        doorCell = _doorCell;
        _doorCell = nil;

    }
    doorCell.selectionStyle = UITableViewCellSelectionStyleNone;
    [doorCell.leSwitch addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
    [doorCell.checkbox addTarget:self action:@selector(checkboxSelected:) forControlEvents:UIControlEventTouchUpInside];

    if(indexPath.row == 0)
    {
        doorCell.label.text = @"Main Door";

    }
    else if(indexPath.row == 1)
    {
        doorCell.label.text = @"Apartment 101";
    }
    else if(indexPath.row == 2)
    {
        doorCell.label.text = @"Apartment 102";

    }

    return doorCell;
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
-(void) switchChanged:(id)sender{
 [SVProgressHUD showErrorWithStatus:@"UI Switch changed"];       
}

@end
