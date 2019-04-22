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
    if (self) {
        _array = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) push:(NSObject *)object{
    [_array addObject:object];
}

-(NSObject*) pop{
    NSInteger last = _array.count - 1;
    return last > -1 ? _array[last] : nil;
}

@end
