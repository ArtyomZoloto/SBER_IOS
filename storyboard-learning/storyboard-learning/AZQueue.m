//
//  Queue.m
//  storyboard-learning
//
//  Created by Zolotoverkhov Artem on 27/03/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

#import "AZQueue.h"

@interface AZQueue ()
@property (strong, nonatomic) NSMutableArray* array;
@end

@implementation AZQueue

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.array = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) add:(NSObject *)object{
    [_array addObject:object];
}

-(NSObject*) get{
    if (_array.count < 1) {
        return nil;
    }
    NSObject *tempObject = _array[0];
    [_array removeObjectAtIndex:0];
    return tempObject;
}

- (NSInteger)length {
    return _array.count;
}

@end
