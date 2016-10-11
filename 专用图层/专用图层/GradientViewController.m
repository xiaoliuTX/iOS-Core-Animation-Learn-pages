//
//  GradientViewController.m
//  专用图层
//
//  Created by naiveBoy on 2016/10/11.
//  Copyright © 2016年 liuweipeng. All rights reserved.
//

#import "GradientViewController.h"

@interface GradientViewController ()
@property (nonatomic, weak) IBOutlet UIView *containerView;
@end

@implementation GradientViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //create gradient layer and add it to our container view
//    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
//    gradientLayer.frame = self.containerView.bounds;
//    [self.containerView.layer addSublayer:gradientLayer];
//    
//    //set gradient colors
//    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor, (__bridge id)[UIColor blueColor].CGColor];
//    
//    //set gradient start and end points
//    //通过设置起终点的坐标可以实现X,Y方向上的渐变色
//    gradientLayer.startPoint = CGPointMake(0, 0);
//    gradientLayer.endPoint = CGPointMake(1, 1);
    
    [self createThreeGradientColors];
}

- (void)createThreeGradientColors {
    //create gradient layer and add it to our container view
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.containerView.bounds;
    [self.containerView.layer addSublayer:gradientLayer];
    
    //set gradient colors
    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor, (__bridge id) [UIColor yellowColor].CGColor, (__bridge id)[UIColor greenColor].CGColor];
    
    //set locations
    gradientLayer.locations = @[@0.25, @0.5, @0.75];
    
    //set gradient start and end points
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(0, 1);
}
@end
