//
//  ViewController.h
//  storyboard-learning
//
//  Created by Zolotoverkhov Artem on 26/03/2019.
//  Copyright © 2019 Zolotoverkhov Artem. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, AZSimpson){
    Bart,
    Homer,
    Lisa,
    Marge,
    Logo
};

@interface AZViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
- (IBAction)showText:(id)sender;
- (IBAction)hideText:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)imageTransparency:(UISlider*)sender;
- (IBAction)randomColor:(id)sender;
- (IBAction)handleBart:(id)sender;
- (IBAction)handleLisa:(id)sender;
- (IBAction)handleMarge:(id)sender;
- (IBAction)handleHomer:(id)sender;
- (IBAction)handleLogo:(id)sender;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *viewCollection;



@end

