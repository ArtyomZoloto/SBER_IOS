#import "ViewController.h"
#import "AZRect.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"apple_logo"];
    UIView *azRect = [[AZRect alloc] initWithImage: image];
    [self.view addSubview:azRect];
    
}


@end
