//
//  ViewController.m
//  storyboard-learning
//
//  Created by Zolotoverkhov Artem on 26/03/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

// 1 UIResponder - что это и зачем. кастомные нажатия и движения пальцев
// 2 Responder Chain
// 3 Иерархия представлений - что лежит в основе, зачем нужна - как создавать представления
// 3.5 Кастомный класс-наследник UIView для реализации реcпондера. Задание с прямоугольником
// 4 MVC вообще и в Apple в частности.
// 5 CALayer
#import "AZViewController.h"
static NSString* const kImagePath = @"images/";
static NSString* const kBart = @"bart.png";
static NSString* const kLisa = @"lisa.png";
static NSString *const kMarge = @"marge.jpg";
static NSString* const kHomer = @"homer.jpeg";
static NSString* const kLogo = @"logo.jpg";


@interface AZViewController ()
@property (nonatomic, assign) AZSimpson character;
@end

@implementation AZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.character = Logo;
    for (UIView *view in self.viewCollection)
    {
        view.backgroundColor = [self getRandomColor];
    }
}

- (IBAction)showText:(id)sender
{
    _textLabel.text = @"Hello World!";
}

- (IBAction)hideText:(id)sender {
    _textLabel.text = @"";
}
- (IBAction)imageTransparency:(UISlider*)sender {
    _imageView.alpha = sender.value;
}

- (IBAction)randomColor:(id)sender {
    super.view.backgroundColor = [self getRandomColor];
}

- (IBAction)handleBart:(id)sender {
    [self setCharacter: Bart];
}

- (IBAction)handleLisa:(id)sender {
    [self setCharacter: Lisa];
}

- (IBAction)handleMarge:(id)sender {
    [self setCharacter: Marge];
}

- (IBAction)handleHomer:(id)sender {
    [self setCharacter: Homer];
}

- (IBAction)handleLogo:(id)sender {
    [self setCharacter:Logo];
}

- (UIColor *)getRandomColor
{
    return [UIColor colorWithRed:[self randomByte] green:[self randomByte] blue:[self randomByte] alpha:1];
}

-(CGFloat)randomByte
{
    return arc4random() % 256 /255.0f;
}

-(void)setCharacter:(AZSimpson) simpson
{
    switch (simpson){
        case Bart:
            _imageView.image = [UIImage imageNamed:[kImagePath stringByAppendingString:kBart]];
            break;
        case Lisa:
            _imageView.image = [UIImage imageNamed:[kImagePath stringByAppendingString:kLisa]];
            break;
        case Homer:
            _imageView.image = [UIImage imageNamed:[kImagePath stringByAppendingString:kHomer]];
            break;
        case Marge:
            _imageView.image = [UIImage imageNamed:[kImagePath stringByAppendingString:kMarge]];
            break;
        case Logo:
            _imageView.image = [UIImage imageNamed:[kImagePath stringByAppendingString:kLogo]];
            break;
    }
}

@end
