//
//  UIImage+FDAdd.m
//  FDCategories
//
//  Created by fandy on 15/8/19.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import "UIImage+FDAdd.h"

@implementation UIImage (FDAdd)

+ (UIImage *)fd_imageWithOriginalRenderImageName:(NSString *)imageName {
    UIImage *image = [UIImage imageNamed:imageName];
    return  [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

+ (UIImage *)fd_resizableImageWithImageName:(NSString *)imageName {
    
    UIImage *image = [UIImage imageNamed:imageName];
    
    CGFloat imageEdgeW = image.size.width * 0.5;
    CGFloat imageEdgeH = image.size.height *0.5;
    
    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(imageEdgeH, imageEdgeW, imageEdgeH, imageEdgeW)];
    return image;
}


@end
