//
//  AZStack.m
//  stack
//
//  Created by Zolotoverkhov Artem on 27/03/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

#import "AZStack.h"

@interface AZStack ()
@property(assign, nonatomic) NSInteger count;
@property(strong, nonatomic) NSMutableArray* array;
@end

@implementation AZStack

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.array = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) push:(NSObject *)object{
    [_array addObject:object];
}

-(NSObject*) pop{
    if (_array.count < 1) {
        return nil;
    }
    NSInteger lastIndex = _array.count - 1;
    NSObject *tempObject = _array[lastIndex];
    [_array removeObjectAtIndex:lastIndex];
    return tempObject;
}

-(NSInteger) count{
    return _array.count;
}

@end
