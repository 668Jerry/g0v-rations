//
//  TableViewController.h
//  g0v rations
//
//  Created by lololol on 29/Aug/14.
//  Copyright (c) 2014 Leisure Design. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface TableViewController : UITableViewController
{
    AppDelegate *delegate;
}

@property NSMutableArray *nsmaOutputTable;

@end
