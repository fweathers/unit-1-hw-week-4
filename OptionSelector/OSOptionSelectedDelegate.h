//
//  OSOptionSelectedDelegate.h
//  OptionSelector
//
//  Created by Felicia Weathers on 9/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SelectorTableViewController;

@protocol OSOptionSelectedDelegate <NSObject>

- (void)selectorTableViewController: (SelectorTableViewController *)tableViewController
                  didSelectAnOption:(NSUInteger)cellIndex;

@end