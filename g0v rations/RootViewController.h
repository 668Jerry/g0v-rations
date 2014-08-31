//
//  RootViewController.h
//  g0v rations
//
//  Created by lololol on 31/Aug/14.
//  Copyright (c) 2014 Leisure Design. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "scoutParseDelegate.h"

@interface RootViewController : UIViewController<UIGestureRecognizerDelegate, UIPickerViewDataSource, UIPickerViewDelegate>
{
    UIButton *UIButtonSearch;
    scoutParseDelegate *Scout;
    NSArray *nsaPickerList;
    NSMutableArray *nsmaPickerList1;
    NSMutableArray *nsmaPickerList2;
    NSMutableArray *nsmaPickerList3;
    AppDelegate *delegate;
}
@property UIPickerView *picker;

@end
