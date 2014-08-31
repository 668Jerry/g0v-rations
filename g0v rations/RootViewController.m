//
//  RootViewController.m
//  g0v rations
//
//  Created by lololol on 31/Aug/14.
//  Copyright (c) 2014 Leisure Design. All rights reserved.
//

#import "RootViewController.h"
#import "AppDelegate.h"
#import "TableViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)setMyPicker {
    if (self.view.frame.size.height > 480.0) {
        self.picker = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 488 - self.view.frame.size.height + 60 + (self.view.frame.size.height - 60 - 65)/2, 320, (self.view.frame.size.height - 60 - 65)/2)];
    }else {
        self.picker = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 390 - self.view.frame.size.height + 60 + (self.view.frame.size.height - 60 - 65)/2, 320, (self.view.frame.size.height - 60 - 65)/2)];
    }
    
    self.picker.dataSource = self;
    self.picker.delegate = self;
//    [self.picker selectRow:7 inComponent:1 animated:YES];
//    delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
//    delegate.nsiUserInputStation = 7;
//    delegate.nssUserInputStationNumber = nsaStationNumber258[7];
//    delegate.nssUserInputStationChinese = nsaStationChinese258[7];
    [self.picker setTintColor:[UIColor whiteColor]];
    [self.view addSubview:self.picker];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component == 0) {
        delegate.nssSelectedAttribute1 = [nsaPickerList objectAtIndex:(long)row];
        NSLog(@"%@", delegate.nssSelectedAttribute1);
    } else if (component == 1) {
        delegate.nssSelectedAttribute2 = [nsaPickerList objectAtIndex:(long)row];
        NSLog(@"%@", delegate.nssSelectedAttribute2);
    }
}

# pragma mark UIPickerViewDataSource

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0) {
        return [nsaPickerList count];
    } else if (component == 1) {
        return [nsaPickerList count];
    } else if (component == 3) {
        return [nsaPickerList count];
    }
    return 0;
}

# pragma mark UIPickerViewDelegate

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == 0) {
        return [nsaPickerList objectAtIndex:row];
    } else if (component == 1) {
        return [nsaPickerList objectAtIndex:row];
    }
    return [nsaPickerList objectAtIndex:row];
}

- (void)buttonSelect {
//    delegate.nssDirection = LINE_DIR_CLOCKWISE;
//    TableViewController *tableViewController = [[TableViewController alloc]init];
//    [self.navigationController pushViewController:tableViewController animated:YES];

    TableViewController *tvc = [[TableViewController alloc] init];
    [self.navigationController pushViewController:tvc animated:YES];
}

- (void)setButton {
    UIButtonSearch = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButtonSearch.frame = CGRectMake(65, self.view.frame.size.height - 99, 190, 65);
    //    [UIButtonLeft setTitle:@"vc2:v1" forState:UIControlStateNormal];
    [UIButtonSearch addTarget:self action:@selector(buttonSelect) forControlEvents:UIControlEventTouchUpInside];
//    UIButtonSearch.tintColor = [UIColor blackColor];
    [self.view addSubview:UIButtonSearch];
    
    UIImage *btnImageSearch = [UIImage imageNamed:@"search@2x.png"];
    [UIButtonSearch setImage:btnImageSearch forState:UIControlStateNormal];
}

- (void)setScout
{
    Scout = [scoutParseDelegate new];
    [Scout getStart:0];
    
    NSLog(@"%@", [[Scout.nsmaHierachyTag objectAtIndex:0] objectForKey:@"DataCollection"]);
    NSLog(@"%@, %d, %d", Scout.nssTheColumnName, Scout.iTheColumnHirachy, Scout.iTheColumnHirachyRepeatTime);
    nsaPickerList = [[Scout.nsmaHierachyTag objectAtIndex:Scout.iTheColumnHirachy] allKeys];

//    nsaPickerList1 = [[Scout.nsmaHierachyTag objectAtIndex:Scout.iTheColumnHirachy] allKeys];
//    nsaPickerList2 = [[Scout.nsmaHierachyTag objectAtIndex:Scout.iTheColumnHirachy] allKeys];
//    nsaPickerList3 = [[Scout.nsmaHierachyTag objectAtIndex:Scout.iTheColumnHirachy] allKeys];
//    NSLog(@"%@", nsaPickerList1);
//        [list1 objectAtIndex:row]
//    self.nsmaOutputTable = [NSMutableArray new];
//    for (int i = 0; i < [Scout.nsmaOutput count]; i++) {
//        [self.nsmaOutputTable addObject:[myParse.nsmaOutput objectAtIndex:i]];
//        //        NSLog(@"i: %d", i);
//        for (NSString* key in [myParse.nsmaOutput objectAtIndex:i]) {
//            //            NSLog(@"%@", key);
//        }
//    }

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [self setButton];
    [self setScout];
    [self setMyPicker];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
