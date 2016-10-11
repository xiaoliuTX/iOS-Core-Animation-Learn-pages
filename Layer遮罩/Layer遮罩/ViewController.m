//
//  ViewController.m
//  Layer遮罩
//
//  Created by naiveBoy on 2016/10/10.
//  Copyright © 2016年 liuweipeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *bgimage = [UIImage imageNamed:@"flowers"];
    UIImage *image = [UIImage imageNamed:@"wujiaoxing"];
    
    UIImageView *bgimageview = [[UIImageView alloc] initWithFrame:self.view.bounds];
    bgimageview.image = bgimage;
    [self.view addSubview:bgimageview];
    
//    CAShapeLayer *maskShape = [CAShapeLayer layer];
//    maskShape.path = CGPathCreateWithEllipseInRect(self.view.bounds, nil);
//    maskShape.strokeColor = [UIColor redColor].CGColor;
//    maskShape.lineWidth = 4;
    
    CALayer *layer = [CALayer layer];
    layer.frame = self.view.bounds;
    layer.contentsGravity = kCAGravityCenter;
    layer.contents = (__bridge id _Nullable)(image.CGImage);
    
    bgimageview.layer.mask = layer;
//    UIImageView *bgChangeImageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
