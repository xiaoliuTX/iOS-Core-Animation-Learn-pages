//
//  LayerLabel.m
//  专用图层
//
//  Created by naiveBoy on 2016/10/11.
//  Copyright © 2016年 liuweipeng. All rights reserved.
//

#import "LayerLabel.h"

@implementation LayerLabel

+ (Class)layerClass {
    return [CATextLayer class];
}

- (CATextLayer *)textLayer
{
    return (CATextLayer *)self.layer;
}

- (void)setUp
{
    //set defaults from UILabel settings
    self.text = self.text;
    self.textColor = self.textColor;
    self.font = self.font;
    
    //we should really derive these from the UILabel settings too
    //but that's complicated, so for now we'll just hard-code them
    [self textLayer].alignmentMode = kCAAlignmentJustified;
    
    [self textLayer].wrapped = YES;
    [self.layer display];
}

- (id)initWithFrame:(CGRect)frame
{
    //called when creating label programmatically
    if (self = [super initWithFrame:frame]) {
        [self setUp];
    }
    
    return self;
}

- (void)awakeFromNib
{
    //called when creating label using Interface Builder
    [self setUp];
    
    [super awakeFromNib];
}

- (void)setText:(NSString *)text
{
    super.text = text;
    //set layer text
    [self textLayer].string = text;
}

- (void)setTextColor:(UIColor *)textColor
{
    super.textColor = textColor;
    //set layer text color
    [self textLayer].foregroundColor = textColor.CGColor;
}

- (void)setFont:(UIFont *)font
{
    super.font = font;
    //set layer font
    CFStringRef fontName = (__bridge CFStringRef)font.fontName;
    CGFontRef fontRef = CGFontCreateWithFontName(fontName);
    [self textLayer].font = fontRef;
    [self textLayer].fontSize = font.pointSize;
    
    CGFontRelease(fontRef);
}
@end
