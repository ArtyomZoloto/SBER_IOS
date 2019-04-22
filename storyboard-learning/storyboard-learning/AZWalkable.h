//
//  Walkable.h
//  storyboard-learning
//
//  Created by Zolotoverkhov Artem on 27/03/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AZWalkable <NSObject>

@optional
@property (assign, nonatomic) CGFloat speed;

@required
-(void) walk;
@end
