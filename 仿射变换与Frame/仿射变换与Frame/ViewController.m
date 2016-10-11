//
//  ViewController.m
//  仿射变换与Frame
//
//  Created by naiveBoy on 16/9/23.
//  Copyright © 2016年 liuweipeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *centerView;
@property (weak, nonatomic) IBOutlet UIView *backView;
@property (weak, nonatomic) IBOutlet UIButton *clipBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self anchorPoint];
}

- (void)anchorPoint {
    NSLog(@"%@",NSStringFromCGRect(self.centerView.frame));
    NSLog(@"%@",NSStringFromCGRect(self.centerView.bounds));
    NSLog(@"%@",NSStringFromCGPoint(self.centerView.center));
    NSLog(@"%@",NSStringFromCGRect(self.centerView.layer.frame));
    NSLog(@"%@",NSStringFromCGRect(self.centerView.layer.bounds));
    NSLog(@"%@",NSStringFromCGPoint(self.centerView.layer.position));
    
    self.centerView.layer.anchorPoint = CGPointMake(0, 0);
    NSLog(@"==========================================");
    
    NSLog(@"%@",NSStringFromCGRect(self.centerView.frame));
    NSLog(@"%@",NSStringFromCGRect(self.centerView.bounds));
    NSLog(@"%@",NSStringFromCGPoint(self.centerView.center));
    NSLog(@"%@",NSStringFromCGRect(self.centerView.layer.frame));
    NSLog(@"%@",NSStringFromCGRect(self.centerView.layer.bounds));
    NSLog(@"%@",NSStringFromCGPoint(self.centerView.layer.position));
    
}

-(void)transform {
    NSLog(@"%@",NSStringFromCGRect(self.backView.frame));
    NSLog(@"%@",NSStringFromCGRect(self.backView.layer.frame));
    NSLog(@"%@",NSStringFromCGRect(self.backView.bounds));
    NSLog(@"%@",NSStringFromCGRect(self.centerView.frame));
    NSLog(@"%@",NSStringFromCGRect(self.clipBtn.frame));
    
    self.backView.transform = CGAffineTransformMakeScale(0.5, 0.9);
    //    self.centerView.transform = CGAffineTransformMakeRotation(M_PI/4);
    NSLog(@"==========================================");
    
    NSLog(@"%@",NSStringFromCGRect(self.backView.frame));
    NSLog(@"%@",NSStringFromCGRect(self.backView.layer.frame));
    NSLog(@"%@",NSStringFromCGRect(self.backView.bounds));
    NSLog(@"%@",NSStringFromCGRect(self.centerView.frame));
    NSLog(@"%@",NSStringFromCGRect(self.clipBtn.frame));
}

@end
