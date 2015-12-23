//
//  UIImage+GIF.h
//  kxkg
//
//  Created by hefeiyue on 15/4/20.
//  Copyright (c) 2015年 奈文魔尔. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (GIF)

+ (UIImage *)sd_animatedGIFNamed:(NSString *)name;

+ (UIImage *)sd_animatedGIFWithData:(NSData *)data;

- (UIImage *)sd_animatedImageByScalingAndCroppingToSize:(CGSize)size;

@end
