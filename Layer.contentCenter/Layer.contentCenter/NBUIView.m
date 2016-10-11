//
//  NBUIView.m
//  Layer.contentCenter
//
//  Created by naiveBoy on 2016/10/9.
//  Copyright © 2016年 liuweipeng. All rights reserved.
//

#import "NBUIView.h"

@implementation NBUIView


- (void)drawRect:(CGRect)rect {
//    self.layer.backgroundColor = [UIColor whiteColor].CGColor;
    //即使没有设置Layer的maskToBounds属性，超出ctx部分的仍然不会被渲染出来
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, 10);
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextStrokeEllipseInRect(ctx, self.layer.bounds);
}


//- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
//    CGContextSetLineWidth(ctx, 10);
//    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
//    CGContextStrokeEllipseInRect(ctx, self.layer.bounds);
//}

@end
