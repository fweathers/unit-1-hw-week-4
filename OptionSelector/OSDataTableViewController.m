//
//  OSDataTableViewController.m
//  OptionSelector
//
//  Created by Felicia Weathers on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "OSDataTableViewController.h"

@interface OSDataTableViewController ()

@end

@implementation OSDataTableViewController

- (void)initializeData {
    
    [self initializeTopicNamesArray];
    
}

- (void)initializeTopicNamesArray {
    
    self.topicNames = @[
                       @"Dogs",
                       @"Cars",
                       @"Food"];
}


@end
