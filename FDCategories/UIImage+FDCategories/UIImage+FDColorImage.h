//
//  UIImage+FDColorImage.h
//  FDCategories
//
//  Created by fandy on 15/8/19.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (FDColorImage)

/**
 *  根据颜色生成同颜色图片,可以调整透明度
 */
+ (UIImage *)fd_imageWithColor:(UIColor *)color;

+ (UIImage *)fd_imagewithColor:(UIColor *)color size:(CGSize)size;

/**
 *  获取图片平均颜色
 */
- (UIColor *)fd_averageColor;

/**
 *  生成灰色图片
 *
 */
- (UIImage *)fd_grayScale;

@end
