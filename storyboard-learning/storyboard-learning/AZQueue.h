//
//  Queue.h
//  storyboard-learning
//
//  Created by Zolotoverkhov Artem on 27/03/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AZQueue : NSObject
@property (assign, nonatomic, readonly) NSInteger length;
-(void) add: (NSObject*) object;
-(NSObject*) get;
@end

NS_ASSUME_NONNULL_END
