//
//  AZStack.h
//  stack
//
//  Created by Zolotoverkhov Artem on 27/03/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AZStack : NSObject

@property (assign, nonatomic, readonly) NSInteger count;


-(void) push:(NSObject*) object;
-(NSObject*) pop;


@end

NS_ASSUME_NONNULL_END
