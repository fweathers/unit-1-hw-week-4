//
//  OKDetailTableViewController.m
//  OptionSelector
//
//  Created by Felicia Weathers on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "OSDetailTableViewController.h"

@interface OSDetailTableViewController ()

@end

@implementation OSDetailTableViewController

- (void)initializeListOfItems {
    [self initializeTopicDetailsDictionary];
}

- (void)initializeTopicDetailsDictionary {
    NSArray *dogs = @[
                      @"Pitbull",
                      @"Poodle",
                      @"Golden Retriever",
                      @"Yorkshire Terrier",
                      @"Boxer"
                      ];
    
    NSArray *cars = @[
                      @"Camaro",
                      @"Mustang",
                      @"Corvette",
                      @"Mini Cooper",
                      @"Cayenne"
                      ];
    
    NSArray *food = @[
                      @"Pasta",
                      @"Salad",
                      @"Pizza",
                      @"Chicken",
                      @"Lobster",
                      ];
    
}

@end
