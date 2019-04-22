//
//  AZPage.h
//  storyboard-learning
//
//  Created by Zolotoverkhov Artem on 27/03/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AZBook;

@interface AZPage : NSObject

@property (strong, nonatomic) AZBook* book; //retain cycle here! must be weak!
@property (assign, nonatomic) NSInteger pageNumber;
@property (copy, nonatomic) NSString* text;

@end

