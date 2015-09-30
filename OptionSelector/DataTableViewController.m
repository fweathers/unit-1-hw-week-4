//
//  DataTableViewController.m
//  OptionSelector
//
//  Created by Felicia Weathers on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DataTableViewController.h"
#import "CQCategory.h"
#import "SelectorTableViewController.h"
#import "OSOptionSelectedDelegate.h"

@interface DataTableViewController ()

@property (nonatomic)CQCategory *optionSelected;

@end

@implementation DataTableViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData]; // to reload selected cell
}

- (void)viewDidLoad {
    [super viewDidLoad];

    CQCategory *dogs = [[CQCategory alloc]init];
    
    dogs.name = @"Dogs";
    dogs.options = @[@"Golden Retriever",
                     @"Siberian Husky",
                     @"Chihuahua",
                     @"German Shepherd"];
//    dogs.selection = @" ";
    
    CQCategory *foods = [[CQCategory alloc]init];
    
    foods.name = @"Food";
    foods.options = @[@"Salami and Cheese",
                      @"Chicken and Rice",
                      @"Spaghetti and Meatball",
                      @"Drunk Man Noodles"];
//    foods.selection = @" ";
    
    CQCategory *cars = [[CQCategory alloc]init];
    
    cars.name = @"Cars";
    cars.options = @[@"Porsche Cayenne",
                      @"Hyundai Genesis",
                      @"Nissan GT-R"];
//    cars.selection = @" ";

    self.categoryTopics = @[dogs, foods, cars];

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.categoryTopics.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OptionSelectorIdentifier" forIndexPath:indexPath];
    
    //prints topic names in cell
    CQCategory *categoryTopics = self.categoryTopics[indexPath.row];
    cell.textLabel.text = categoryTopics.name;
    
   // CQCategory *optionSelected = self.categoryTopics.;
    cell.detailTextLabel.text = categoryTopics.selection;
    
    NSLog(@"%@", categoryTopics.selection);
    
    return cell;
}

//-(void)selectorTableViewController:(SelectorTableViewController *)tableViewController didSelectAnOption:(NSUInteger)cellIndex {
//    
//    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//    CQCategory *category = self.categoryTopics[indexPath.row];
//    [category setSelection:category.options[cellIndex]];
//    NSLog(@"%@", category.options[cellIndex]);
//}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    CQCategory *categoryTopic = self.categoryTopics[indexPath.row];
    
    SelectorTableViewController *vc = segue.destinationViewController;
    vc.optionChosen = categoryTopic;

}

@end
