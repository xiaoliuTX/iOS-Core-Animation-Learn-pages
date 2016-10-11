//
//  NBMaskViewController.m
//  Layer.contentCenter
//
//  Created by naiveBoy on 2016/10/9.
//  Copyright © 2016年 liuweipeng. All rights reserved.
//

#import "NBMaskViewController.h"

@interface NBMaskViewController ()


@end

@implementation NBMaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    imageView.image = [UIImage imageNamed:@"flower"];
    //create a new transform
    CATransform3D transform = CATransform3DIdentity;
    //apply perspective
    transform.m34 = - 1.0 / 200.0;
    //rotate by 45 degrees along the Y axis
    transform = CATransform3DRotate(transform,M_PI, 0, 1, 0);
    //apply to layer
//    imageView.layer.doubleSided = NO;         //使图层的反面不被绘制
    imageView.layer.transform = transform;
    
    [self.view addSubview:imageView];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
