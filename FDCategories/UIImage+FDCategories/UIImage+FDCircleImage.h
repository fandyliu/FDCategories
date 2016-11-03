//
//  UIImage+FDCircleImage.h
//  FDCategories
//
//  Created by fandy on 15/8/19.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface UIImage (FDCircleImage)

/**
 *  由方形图片绘制成圆形(椭圆形)图片导出
 *
 */
- (UIImage *)fd_circleImage;
- (UIImage *)fd_circleImageWithSize:(CGSize)size;
+ (UIImage *)fd_circleImageWithImageName:(NSString *)imageName;

/**
 *  导入一个正方形图片绘制成带有边框的圆形导出
 *
 */
- (UIImage *)fd_circleImageWithBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
+ (UIImage *)fd_circleImageWithImageName:(NSString *)imageName borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;



@end
