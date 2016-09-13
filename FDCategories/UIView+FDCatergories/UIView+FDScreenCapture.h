//
//  UIView+FDScreenCapture.h
//  FDCategories
//
//  Created by QianTuFD on 16/8/22.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, FDImageRepresentation) {
    FDImagePNGRepresentation,
    FDImageJPEGRepresentation
};

@interface UIView (FDScreenCapture)

/**
 *  将View转换为UIImage;
 *
 */
- (UIImage *)fd_imageFromView;

/**
 *  截图View 将View画为图片并且保存 注意图片名要与选择地类型一致
 *
 *  @param path                全路径
 *  @param imageRepresentation 图片类型
 */
- (void)fd_viewScreenCaptureSaveToPath:(NSString *)path WithImageRepresentation:(FDImageRepresentation)imageRepresentation;

- (void)fd_viewScreenCaptureSaveToPath:(NSString *)path;



@end
