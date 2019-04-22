//
//  Human.h
//  storyboard-learning
//
//  Created by Zolotoverkhov Artem on 27/03/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AZWalkable.h"
#import "AZRunable.h"
#import "AZPassport.h"

NS_ASSUME_NONNULL_BEGIN

@interface AZHuman : NSObject  <AZWalkable, AZRunable, AZPassport>
@property (nonatomic, readonly, copy) NSString* name;
-(instancetype) initWithName: (NSString*) name;
@end

NS_ASSUME_NONNULL_END
