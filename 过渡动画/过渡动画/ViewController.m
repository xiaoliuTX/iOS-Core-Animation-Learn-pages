//
//  ViewController.m
//  过渡动画
//
//  Created by naiveBoy on 2016/10/11.
//  Copyright © 2016年 liuweipeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <CAAnimationDelegate>

@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *toImageView;
@property (nonatomic, copy) NSArray *images;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //set up images
    self.images = @[[UIImage imageNamed:@"flowers"],
                    [UIImage imageNamed:@"maskImage"],
                    [UIImage imageNamed:@"wujiaoxing"]
                    ];
}


- (IBAction)switchImage
{
//    //set up crossfade transition
//    CATransition *transition = [CATransition animation];
//    transition.type = kCATransitionFromLeft;
//    //apply transition to imageview backing layer
//    [self.imageView.layer addAnimation:transition forKey:nil];
//    //cycle to next image
//    UIImage *currentImage = self.imageView.image;
//    NSUInteger index = [self.images indexOfObject:currentImage];
//    index = (index + 1) % [self.images count];
//    self.imageView.image = self.images[index];
    
//    [UIView transitionWithView:self.imageView duration:1.0
//                       options:UIViewAnimationOptionTransitionFlipFromBottom
//                    animations:^{
//                        //cycle to next image
//                        UIImage *currentImage = self.imageView.image;
//                        NSUInteger index = [self.images indexOfObject:currentImage];
//                        index = (index + 1) % [self.images count];
//                        self.imageView.image = self.images[index];
//                    }
//                    completion:NULL];
    [UIView transitionFromView:self.imageView toView:self.toImageView duration:1 options:UIViewAnimationOptionTransitionCurlUp completion:^(BOOL finished) {
        NSLog(@"complete");
    }];
}
- (IBAction)start:(id)sender {
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"transform.rotation";
    animation.duration = 2.0;
    animation.byValue = @(M_PI * 2);
    animation.delegate = self;
    [self.toImageView.layer addAnimation:animation forKey:@"rotateAnimation"];
}

- (IBAction)stop:(id)sender {
    [self.toImageView.layer removeAnimationForKey:@"rotateAnimation"];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    NSLog(@"The animation stopped (finished: %@)", flag? @"YES": @"NO");
}


@end
