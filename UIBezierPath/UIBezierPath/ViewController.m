//
//  ViewController.m
//  UIBezierPath
//
//  Created by naiveBoy on 16/9/20.
//  Copyright © 2016年 liuweipeng. All rights reserved.
//

#import "ViewController.h"
#import "MUIView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MUIView *drawView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, YES, 0);
//    [inputView drawViewHierarchyInRect:inputView.bounds afterScreenUpdates:YES];
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
   

    CGPoint topleft = _drawView.frame.origin;
    
    UIColor *color = [UIColor redColor];
    [color set]; //设置线条颜色
    
    UIBezierPath* aPath = [UIBezierPath bezierPath];
    
    aPath.lineWidth = 5.0;
    aPath.lineCapStyle = kCGLineCapRound; //线条拐角
    aPath.lineJoinStyle = kCGLineCapRound; //终点处理
    
    [aPath moveToPoint:CGPointMake(topleft.x, topleft.y)];
    
    [aPath addQuadCurveToPoint:CGPointMake(topleft.x, topleft.y+100) controlPoint:CGPointMake(topleft.x+100, topleft.y+50)];
    [aPath closePath];
    [aPath stroke];
    [aPath fill]; 
    
    //根据坐标点连线
    [aPath stroke];
    [aPath fill];
    
    UIGraphicsEndImageContext();
}

@end
