//
//  AZColorRectView.m
//  Homework_2_UIKit
//
//  Created by Zolotoverkhov Artem on 19/04/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

#import "AZColorRectView.h"

@implementation AZColorRectView

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CGPoint touchPoint =[[touches anyObject] locationInView:self];
    self.offSetX = CGRectGetMidX(self.bounds) - touchPoint.x;
    self.offSetY = CGRectGetMidY(self.bounds) - touchPoint.y;
    NSLog(@"offset X = %f",_offSetX);
    NSLog(@"offset Y = %f",_offSetY);
    NSLog(@"center X = %f",self.center.x);
    NSLog(@"center Y = %f",self.center.y);
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CGPoint touchPoint =[[touches anyObject] locationInView:self];
//    self.center = CGPointMake(touchPoint.x + self.offSetX,
//                              touchPoint.y + self.offSetY);
    self.center = touchPoint;
    
   
}

@end
