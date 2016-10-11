//
//  ViewController.m
//  Layer.contentCenter
//
//  Created by naiveBoy on 2016/10/9.
//  Copyright © 2016年 liuweipeng. All rights reserved.
//

#import "ViewController.h"
#import "NBUIView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *button1;
@property (weak, nonatomic) IBOutlet UIView *button2;
@property (weak, nonatomic) IBOutlet UIView *imageView;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad]; //load button image
   
    
    [self calayerDelegateCall];
}

// 设置layer的contentCenter、contentRect属性
- (void) setLayerContentProperty {
    UIImage *image = [UIImage imageNamed:@"Button.png"];
    
    //set button 1
    [self addStretchableImage:image withContentCenter:CGRectMake(0.25, 0.25, 0.5, 0.5) toLayer:self.button1.layer];
    
    //set button 2
    [self addStretchableImage:image withContentCenter:CGRectMake(0, 0, 1, 1) toLayer:self.button2.layer];
    
    self.imageView.layer.contents = (__bridge id)image.CGImage;
    self.imageView.layer.contentsRect = CGRectMake(0.5, 0, 0.5, 1);
}

- (void)addStretchableImage:(UIImage *)image withContentCenter:(CGRect)rect toLayer:(CALayer *)layer
{
    //set image
    layer.contents = (__bridge id)image.CGImage;
    
    //set contentsCenter
    layer.contentsCenter = rect;
}

// CALayerDelegate协议的使用
- (void)calayerDelegateCall {
    NBUIView *nbview = [[NBUIView alloc] initWithFrame:CGRectMake(0, 400, 50, 50)];
    [self.view addSubview:nbview];
}
@end
