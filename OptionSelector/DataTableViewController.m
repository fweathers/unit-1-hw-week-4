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

@interface DataTableViewController ()

@end

@implementation DataTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CQCategory *dogs = [[CQCategory alloc]init];
    dogs.name = @"Dogs";
    dogs.options = @[@"Golden Retriever", @"Siberian Husky", @"Chihuahua", @"German Shepherd"];
    
    CQCategory *foods = [[CQCategory alloc]init];
    foods.name = @"Name";
    foods.options = @[@"Salami and Cheese", @"Chicken and Rice", @"Spaghetti and Meatball",@"Drunk Man Noodles"];
    
    CQCategory *cars = [[CQCategory alloc]init];
    cars.name = @"Cars";
    foods.options = @[@"Porsche Cayenne", @"Hyundai Genesis", @"Nissan GT-R"];
    
    NSArray *categoryTopics = [[NSArray alloc]init];
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
    
    cell.detailTextLabel.text = categoryTopics.selection;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    CQCategory *categoryTopic = self.categoryTopics[indexPath.row];
    
    SelectorTableViewController *vc = segue.destinationViewController;
    vc.optionChosen = categoryTopic;
    
    

}

@end
