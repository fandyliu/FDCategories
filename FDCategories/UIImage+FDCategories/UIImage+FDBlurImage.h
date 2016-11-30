//
//  UIImage+FDBlurImage.h
//  FDCategories
//
//  Created by fandy on 15/8/19.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (FDBlurImage)

/**
 *  模糊效果
 *  渲染很耗时间,建议在子线程中渲染
 *
 */
- (UIImage *)fd_blurImage;
- (UIImage *)fd_blurImageWithMask:(UIImage *)maskImage;
- (UIImage *)fd_blurImageWithRadius:(CGFloat)radius;
- (UIImage *)fd_blurImageAtFrame:(CGRect)frame;



- (UIImage *)fd_applyLightEffect;
- (UIImage *)fd_applyExtraLightEffect;
- (UIImage *)fd_applyDarkEffect;
- (UIImage *)fd_applyTintEffectWithColor:(UIColor *)tintColor;


@end
