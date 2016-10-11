//
//  MUIView.m
//  UIBezierPath
//
//  Created by naiveBoy on 16/9/20.
//  Copyright © 2016年 liuweipeng. All rights reserved.
//

#import "MUIView.h"

@implementation MUIView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    UIBezierPath* aPath = [UIBezierPath bezierPathWithRect:CGRectMake(20, 20, 100, 50)]; // 2.创建图形相应的UIBezierPath对象
    
    // 3.设置一些修饰属性
    aPath.lineWidth = 8.0;
    aPath.lineCapStyle = kCGLineCapRound;
    aPath.lineJoinStyle = kCGLineCapRound;
    UIColor *color = [UIColor colorWithRed:0 green:0 blue:0.7 alpha:1];
    [color set];
    
    [aPath stroke]; // 4.渲染，完成绘制

}


@end
