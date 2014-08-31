//
//  myParseDelegate.m
//  TaiwanRailwayDataSearch
//
//  Created by lololol on 18/Feb/14.
//  Copyright (c) 2014 lololol. All rights reserved.
//

#import "scoutParseDelegate.h"

//@property NSMutableArray *nsmaHierachyTag;///for scout
//@property NSMutableArray *nsmaHierachyAttribute;
//@property NSMutableArray *nsmaScoutColumnAttribute;///for picker


@implementation scoutParseDelegate
- (void)getStart:(NSInteger)l_nsiUserInputSearchFunction{
//initialize
    
//    delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
//    delegate.nsmaHierachyTag = [NSMutableArray new];
//    delegate.nsmaHierachyAttribute = [NSMutableArray new];
//    delegate.nsmaScoutColumnAttribute = [NSMutableArray new];

    self.nsmaHierachyTag = [NSMutableArray new];
    self.nsmaHierachyAttribute = [NSMutableArray new];
    self.nsmaScoutColumnAttribute = [NSMutableArray new];
    iNowHierachy = -1;
    iNowHierachyMax = -1;
    
    self.nssTheColumnName = @"";
    self.iTheColumnHirachyRepeatTime = -1;
    self.iTheColumnHirachy = -1;


    
    NSString *BundlePath = [[NSBundle mainBundle] bundlePath];
    NSString *fileName = [NSString stringWithFormat:@"%@/失業率.xml", BundlePath];
    NSLog(@"File Path: %@", fileName);

    NSData *data = [NSData dataWithContentsOfFile:fileName]; //the File Data
    NSXMLParser *parser = [[NSXMLParser alloc] initWithData:data];
    [parser setDelegate:self];
    [parser parse];
    parser = nil;
}

- (void)     parser:(NSXMLParser *)parser
    didStartElement:(NSString *)elementName
       namespaceURI:(NSString *)namespaceURI
      qualifiedName:(NSString *)qualifiedName
         attributes:(NSDictionary *)attributeDict {
    iNowHierachy++;
    if (iNowHierachy > iNowHierachyMax)
    {
        iNowHierachyMax ++;
        NSMutableDictionary *nsdNewDictionaryTag = [NSMutableDictionary new];
        NSMutableDictionary *nsdNewDictionaryAttribute = [NSMutableDictionary new];
        [nsdNewDictionaryTag setObject:@"Value" forKey:@"your key"];
        [self.nsmaHierachyTag addObject:nsdNewDictionaryTag];
        [self.nsmaHierachyAttribute addObject:nsdNewDictionaryAttribute];
    }
    
    if ([[self.nsmaHierachyTag objectAtIndex:iNowHierachy] objectForKey:elementName] == nil) {
        [[self.nsmaHierachyTag objectAtIndex:iNowHierachy] setObject:@"1" forKey:elementName];
    } else {
        int iValue = [[[self.nsmaHierachyTag objectAtIndex:iNowHierachy] objectForKey:elementName] intValue] + 1;
        [[self.nsmaHierachyTag objectAtIndex:iNowHierachy] setObject:[NSString stringWithFormat:@"%d", iValue] forKey:elementName];
//        if (iValue > self.iTheColumnHirachyRepeatTime && iNowHierachy > self.iTheColumnHirachy) {
        if (iValue + iNowHierachy > self.iTheColumnHirachyRepeatTime + self.iTheColumnHirachy) {
            self.nssTheColumnName = elementName;
            self.iTheColumnHirachyRepeatTime = iValue;
            self.iTheColumnHirachy = iNowHierachy;
        }
    }
}

- (void)parser:(NSXMLParser *)parser
foundCharacters:(NSString *)string {
}

- (void)parser:(NSXMLParser *)parser
 didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qName {
    iNowHierachy--;
}

@end
