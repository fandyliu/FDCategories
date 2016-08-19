//
//  UIImage+FDAdd.h
//  FDCategories
//
//  Created by QianTuFD on 16/8/19.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (FDAdd)

/**
 *  返回一张不经过渲染的图片
 *
 */
+ (UIImage *)fd_imageWithOriginalRenderImageName:(NSString *)imageName;

/**
 *  将图片转换为可拉伸图片
 *
 */
+ (UIImage *)fd_resizableImageWithImageName:(NSString *)imageName;



@end
