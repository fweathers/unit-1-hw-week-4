# Option Selector

#### Summary 
Create a simple app with a few different categories (dogs, cars, food, planets, etc). When you tap on a category name it should take you into another `UITableViewController` with a list of possible options. Tapping on an option will show a checkmark at the right of the cell, and remove any other checkmarks on any other cells. When you navigate back to the initial `UITableViewController` you should see the option that you chose next in the corresponding cell. That is all.

You may pick any categories that you want.

![image](https://github.com/accesscode-2-2/unit-1/blob/master/lessons/week-4/images/options.gif?raw=true)

### Organization

This is a suggestion for how to organize your data.

1. Each category is represented by a class. Each category class has 3 properties: name (NSString*), options (NSArray*), selection (NSString*)
2. In your root `UITableViewController`, add a `property` that is an `NSArray` that can hold all of your category objects.
3. In `prepareForSegue`, pass the category object to the other `UITableViewController`

### Process
 TBD
