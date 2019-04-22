//
//  Human.m
//  storyboard-learning
//
//  Created by Zolotoverkhov Artem on 27/03/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

#import "AZHuman.h"


@implementation AZHuman

- (instancetype)initWithName:(NSString *)name{
    {
        self = [super init];
        if (self) {
           // _name = [name copy];
        }
        return self;
    }
}

- (void)walk {
    NSLog(@"%@ is walking!", self.name);
}

- (void)run {
    NSLog(@"%@ is runnig!", self.name);
}

@end
