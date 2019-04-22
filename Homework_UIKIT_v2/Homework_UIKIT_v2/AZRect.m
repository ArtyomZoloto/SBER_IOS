#import "AZRect.h"

@interface AZRect ()
@property (strong, nonatomic) UIGestureRecognizer *panGestureRecognizer;
@property (assign, nonatomic) CGSize offset;
@end

@implementation AZRect

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame: frame];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
        [self addGestureRecognizer: self.panGestureRecognizer];
    }
    return self;
}

-(void) handlePan: (UIGestureRecognizer*) panGestureRecognizer
{
    CGPoint locationInParent = [panGestureRecognizer locationInView:self.window];
    if (panGestureRecognizer.state == UIGestureRecognizerStateBegan){
        self.offset = CGSizeMake(self.center.x - locationInParent.x,
                                 self.center.y - locationInParent.y);
    }
    self.center = CGPointMake(locationInParent.x + self.offset.width,
                              locationInParent.y + self.offset.height);
}

-(UIPanGestureRecognizer*) panGestureRecognizer
{
    return [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
}

-(void) setCenter: (CGPoint) center
{
    super.center = center;
    CGFloat a = self.frame.origin.x;
    CGFloat b = CGRectGetMaxX(self.window.bounds) - CGRectGetMaxX(self.bounds);
    CGFloat white =  1.0f - (a / b);
    if (white <= 0.0f){white = 0.0f;} else if (white >= 1.0f) {white = 1.0f;}
    self.backgroundColor = [[UIColor alloc] initWithWhite:white alpha:1.0f];
}

@end
