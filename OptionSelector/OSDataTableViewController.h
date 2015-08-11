//
//  OSDataTableViewController.h
//  OptionSelector
//
//  Created by Felicia Weathers on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OSDataTableViewController : UITableViewController

@property (nonatomic) NSArray *topicNames;

- (void)initializeData;

@end
