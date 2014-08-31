//
//  TableViewController.m
//  g0v rations
//
//  Created by lololol on 29/Aug/14.
//  Copyright (c) 2014 Leisure Design. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "myParseDelegate.h"

@interface TableViewController ()
{
    myParseDelegate *myParse;
}

@end

@implementation TableViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

//<失業率>
//<資料時期>1978</資料時期>
//<總計>1.67</總計>
//<男>1.57</男>
//<女>1.86</女>
//<age_15-19>3.95</age_15-19>
//<age_20-24>3.77</age_20-24>
//<age_25-29>1.54</age_25-29>
//<age_30-34>0.64</age_30-34>
//<age_35-39>0.38</age_35-39>
//<age_40-44>0.43</age_40-44>
//<age_45-49>0.43</age_45-49>
//<age_50-54>0.82</age_50-54>
//<age_55-59>0.76</age_55-59>
//<age_60-64>0.43</age_60-64>
//<age_65_over>0.17</age_65_over>
//<國中及以下>1.03</國中及以下>
//<國小及以下>0.64</國小及以下>
//<國中>2.28</國中>
//<高中_職>3.69</高中_職>
//<高中>3.72</高中>
//<高職>3.67</高職>
//<大專及以上>3.15</大專及以上>
//<專科>3.75</專科>
//<大學及以上>2.54</大學及以上>
//</失業率>


//
//        if ([elementName isEqual:@"資料時期"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"總計"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"男"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"女"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"age_15-19"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"age_20-24"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"age_25-29"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"age_30-34"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"age_35-39"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"age_40-44"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"age_45-49"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"age_50-54"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"age_55-59"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"age_60-64"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"age_65_over"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"國中及以下"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"國小及以下"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"國中"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"高中_職"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"高中"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"高中"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"高中"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"高中"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"高中"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"高中"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"高中"]){
//        nsiCharState = ;
//    } else if ([elementName isEqual:@"高中"]){
//        nsiCharState = ;
//    }


- (void)prepareTable{
    myParseDelegate *myParse = [myParseDelegate new];
    
    [myParse getStart:0];
    
    self.nsmaOutputTable = [NSMutableArray new];
    for (int i = 0; i < [myParse.nsmaOutput count]; i++) {
        [self.nsmaOutputTable addObject:[myParse.nsmaOutput objectAtIndex:i]];
//        NSLog(@"i: %d", i);
        for (NSString* key in [myParse.nsmaOutput objectAtIndex:i]) {
//            NSLog(@"%@", key);
        }
    }
    
    
//    for (id idDictionary in myParse.nsmaOutput) {
//        [self.nsmaOutputTable addObject:idDictionary];
//        keys=[idDictionary allKeys];
//        NSLog(@"%@", keys);
////        for (NSString* key in keys) {
////            NSLog(@"%@", key);
////        }
//    }
//    for (int i = 0; i < [[myParse nsmaOutput] count]; i++) {
//        if ([[[myParse nsmaOutput][i] objectForKey:@"Time"] compare:nssMyTime options:(NSNumericSearch)] == 1) {
//            [self.nsmaTrainTable addObject:[myParse nsmaOutputTable][i]];
//        }
//    }
//    [self sortTable];
//    [myParse releaseAll];
    myParse = nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [self prepareTable];
//    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 6.0)
//        [[UIApplication sharedApplication] setStatusBarOrientation:UIDeviceOrientationLandscapeLeft animated:NO];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.nsmaOutputTable count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    NSString *theText=[[_loadedNames objectAtIndex: indexPath.row] name];
    //    CGSize labelSize = [theText sizeWithFont:[UIFont fontWithName: @"FontA" size: 15.0f] constrainedToSize:kLabelFrameMaxSize];
    return 72;
}

//- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration
//{
//    if( interfaceOrientation == UIInterfaceOrientationPortrait || interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown){
//        CGRect f = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height / 2);
//        self.view.frame = f;
//        f = CGRectMake(0, self.view.frame.size.height / 2, self.view.frame.size.width, self.view.frame.size.height / 2);
//        self.view.frame = f;
//    }
//    if( interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight) {
//        CGRect f = CGRectMake(0, 0, self.view.frame.size.width / 2, self.view.frame.size.height);
//        self.view.frame = f;
//        f = CGRectMake(self.view.frame.size.width / 2, 0, self.view.frame.size.width / 2, self.view.frame.size.height);
//        self.view.frame = f;
//    }
//}

//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//    if (interfaceOrientation==UIInterfaceOrientationLandscapeLeft || interfaceOrientation==UIInterfaceOrientationLandscapeRight)
//        return YES;
//    
//    return NO;
//}
//
//-(NSUInteger)supportedInterfaceOrientations
//{
//    return UIInterfaceOrientationMaskLandscape;
//}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    // Configure the cell...
//    NSArray *keys=[[self.nsmaOutputTable objectAtIndex:indexPath.row]allKeys];

    NSString *nssTmp = [[NSString alloc]initWithString:[NSString stringWithFormat:@"%d",indexPath.row]];
//    for (NSString* key in [myParse.nsmaOutput objectAtIndex:indexPath.row]) {
//        nssTmp = [nssTmp stringByAppendingString:[[myParse.nsmaOutput objectAtIndex:indexPath.row]objectForKey:key]];
//        NSLog(@"%@", nssTmp);
//    }
//    cell.uiivLabel.text = nssTmp;
//    self.nsmaOutputTable = [NSMutableArray new];
//    for (int i = 0; i < [myParse.nsmaOutput count]; i++) {
//        [self.nsmaOutputTable addObject:[myParse.nsmaOutput objectAtIndex:i]];
//        NSLog(@"i: %d", i);
//        for (NSString* key in [myParse.nsmaOutput objectAtIndex:i]) {
//            NSLog(@"%@", key);
//        }
//    }
    
//    for (NSString* key in [self.nsmaOutputTable objectAtIndex:indexPath.row]) {
////        NSLog(@"%@", key);
//        nssTmp = [NSString stringWithFormat:@"%@, %@:%@", nssTmp, key, [[self.nsmaOutputTable objectAtIndex:indexPath.row] valueForKey:key]];
//    }

    NSLog(@"%@", delegate.nssSelectedAttribute1);
    cell.uiivLabel1.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    cell.uiivLabel2.text = [NSString stringWithFormat:@"%@: %@", delegate.nssSelectedAttribute1, [[self.nsmaOutputTable objectAtIndex:indexPath.row] valueForKey:delegate.nssSelectedAttribute1]];
    cell.uiivLabel3.text = [NSString stringWithFormat:@"%@: %@", delegate.nssSelectedAttribute2, [[self.nsmaOutputTable objectAtIndex:indexPath.row] valueForKey:delegate.nssSelectedAttribute2]];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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
