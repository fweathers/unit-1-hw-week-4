//
//  SelectorTableViewController.m
//  OptionSelector
//
//  Created by Felicia Weathers on 8/14/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "SelectorTableViewController.h"
#import "OSOptionSelectedDelegate.h"

@interface SelectorTableViewController ()

@end

@implementation SelectorTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

//-(void)selectorTableViewController:(SelectorTableViewController *)tableViewController didSelectAnOption:(NSUInteger)cellIndex {
//    
//    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//    CQCategory *category = self.categoryTopics[indexPath.row];
//    [category setSelection:category.choices[cellIndex]];
//    NSLog(@"%@", category.choices[cellIndex]);
//}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.optionChosen.options.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SelectorIdentifier" forIndexPath:indexPath];
    
    NSString *itemChoice = self.optionChosen.options[indexPath.row];
    cell.textLabel.text = itemChoice;
    
    if (self.optionChosen.options[indexPath.row] == self.optionChosen.selection){
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    self.optionChosen.selection = self.optionChosen.options[indexPath.row];
    

    [self.tableView reloadData];
    
}


@end
