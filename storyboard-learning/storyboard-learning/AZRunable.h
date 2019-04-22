//
//  Runable.h
//  storyboard-learning
//
//  Created by Zolotoverkhov Artem on 27/03/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AZRunable <NSObject>

@optional
@property (assign, nonatomic) CGFloat speed;

@required
-(void) run;

@end
