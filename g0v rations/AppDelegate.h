//
//  AppDelegate.h
//  g0v rations
//
//  Created by lololol on 28/Aug/14.
//  Copyright (c) 2014 Leisure Design. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (strong, nonatomic) NSString *nssSelectedAttribute1;
@property (strong, nonatomic) NSString *nssSelectedAttribute2;
@property (strong, nonatomic) NSString *nssSelectedAttribute3;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

