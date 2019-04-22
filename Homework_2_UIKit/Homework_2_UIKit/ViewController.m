//
//  ViewController.m
//  Homework_2_UIKit
//
//  Created by Zolotoverkhov Artem on 19/04/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

#import "ViewController.h"
#import "AZColorRectView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect myFrame = CGRectMake(100, 200, 200, 200);
    self.colorView = [[AZColorRectView alloc] initWithFrame:myFrame];
    self.colorView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.colorView];
}

@end
