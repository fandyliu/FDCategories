//
//  UIImage+FDFrameImage.h
//  FDCategories
//
//  Created by QianTuFD on 16/8/19.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (FDFrameImage)

/**
 *  固定宽或者高,生成固定宽或者高等比例拉伸图片
 *
 */
- (UIImage *)fd_scaleWithFixedWidth:(CGFloat)width;
- (UIImage *)fd_scaleWithFixedHeight:(CGFloat)height;

/**
 *  裁剪图片的一部分(生成固定frame图片)
 *
 */
- (UIImage *)fd_croppedImageAtFrame:(CGRect)frame;

/**
 *  将自身填充到指定的size
 */
- (UIImage *)fd_fillClipSize:(CGSize)size;


@end
