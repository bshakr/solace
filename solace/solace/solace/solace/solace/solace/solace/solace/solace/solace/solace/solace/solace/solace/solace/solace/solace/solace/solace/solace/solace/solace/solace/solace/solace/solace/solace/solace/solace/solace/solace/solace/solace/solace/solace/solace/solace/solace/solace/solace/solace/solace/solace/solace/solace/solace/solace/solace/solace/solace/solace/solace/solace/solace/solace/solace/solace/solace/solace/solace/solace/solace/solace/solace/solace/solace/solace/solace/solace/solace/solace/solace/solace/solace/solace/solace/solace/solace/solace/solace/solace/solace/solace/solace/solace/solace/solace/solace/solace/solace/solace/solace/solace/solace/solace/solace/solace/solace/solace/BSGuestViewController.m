//
//  BSGuestViewController.m
//  solace
//
//  Created by Bassem on 11/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSGuestViewController.h"

@interface BSGuestViewController ()
{
    NSMutableArray *_objects;
}

@end

@implementation BSGuestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        if (!_objects) {
            _objects = [[NSMutableArray alloc] initWithCapacity:100];
            [_objects insertObject:@"Mom"  atIndex:0];
            [_objects insertObject:@"Maid" atIndex:1];
            [_objects insertObject:@"Friend" atIndex:2];

        }
        

   }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    if(!self.detailViewController)
    {
        self.detailViewController = [[BSGuestDetailViewController alloc] initWithNibName:@"BSGuestDetailViewController" bundle:[NSBundle mainBundle]];
    }
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;

}

- (void)insertNewObject:(id)sender
{

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];

    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle ];

    NSString *date = [dateFormatter stringFromDate:[NSDate date]];
    NSLog(@" %@", date);
    [_objects insertObject: date atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _objects.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }

    cell.textLabel.text = _objects[indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    id label = [NSString stringWithFormat:@"Detailed View #%d", indexPath.row];
    self.detailViewController.labels = [NSArray arrayWithObjects: label, nil];
    
    [self.navigationController pushViewController:self.detailViewController animated:YES];
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}


@end
