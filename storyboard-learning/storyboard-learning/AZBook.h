//
//  AZBook.h
//  storyboard-learning
//
//  Created by Zolotoverkhov Artem on 27/03/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AZPage.h"

@interface AZBook : NSObject

@property(strong, nonatomic) AZPage* page1; //retain child - normal situation
@property(strong, nonatomic) AZPage* page2;

@end


