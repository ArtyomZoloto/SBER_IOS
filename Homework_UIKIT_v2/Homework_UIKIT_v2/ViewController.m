#import "ViewController.h"
#import "AZRect.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *azRect = [[AZRect alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    [self.view addSubview:azRect];
    
}


@end
