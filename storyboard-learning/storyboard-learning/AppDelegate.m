//
//  AppDelegate.m
//  storyboard-learning
//
//  Created by Zolotoverkhov Artem on 26/03/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

#import "AppDelegate.h"
#import "AZStack.h"
#import "AZQueue.h"
#import "AZHuman.h"
#import "NSString+AZAddictions.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

#pragma mark Stack test
    AZStack *stack = [[AZStack alloc] init];
    
    NSString *str1 = @"String 1";
    NSString *str2 = @"String 2";
    NSString *str3 = @"String 3";
    NSLog(@"stack count=%ld",(long)stack.count);
    
    [stack push:str1];
    [stack push:str2];
    [stack push:str3];
    NSLog(@"stack count=%ld",(long)stack.count);
    
    NSLog(@"getting from stack..");
    NSLog(@"%@",[stack pop]);
    NSLog(@"%@",[stack pop]);
    NSLog(@"%@",[stack pop]);
    NSLog(@"%@",[stack pop]); // nil
    
#pragma mark AZQueue test
    AZQueue* queue = [[AZQueue alloc] init];
    NSLog(@"adding to queue..");
    [queue add:str1];
    [queue add:str2];
    [queue add:str3];
    
    NSLog(@"getting from queue..");
    NSLog(@"%@",[queue get]);
    NSLog(@"%@",[queue get]);
    NSLog(@"%@",[queue get]);
    NSLog(@"%@",[queue get]); // nil
    
#pragma mark Multiple inheritance
    AZHuman *human = [[AZHuman alloc] initWithName:@"Andrey"];
    [human walk];
    [human run];
    
#pragma mark Category test
    NSString *artemString = [NSString new];
    [artemString sayHi];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
