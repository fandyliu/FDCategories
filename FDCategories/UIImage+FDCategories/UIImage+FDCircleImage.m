//
//  UIImage+FDCircleImage.m
//  FDCategories
//
//  Created by fandy on 15/8/19.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import "UIImage+FDCircleImage.h"

@implementation UIImage (FDCircleImage)

- (UIImage *)fd_circleImage {
    return [self fd_circleImageWithSize:self.size];
}

- (UIImage *)fd_circleImageWithSize:(CGSize)size {
    // CG方法1
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    CGContextAddEllipseInRect(context, rect);
    CGContextClip(context);
    [self drawInRect:rect];
    UIImage *drawImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return drawImg;
    // 方法二
    //    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    //    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    //    [path addClip];
    //    [self drawAtPoint:CGPointZero];
    //    UIImage *drawImg = UIGraphicsGetImageFromCurrentImageContext();
    //    UIGraphicsEndImageContext();
    //    return drawImg;
}

+ (UIImage *)fd_circleImageWithImageName:(NSString *)imageName {
    return [[self imageNamed:imageName] fd_circleImage];
}

- (UIImage *)fd_circleImageWithBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor {
    CGFloat width = self.size.width;
    CGFloat height = self.size.height;
    CGFloat ctxW = width + 2 * borderWidth;
    CGFloat ctxH = height + 2 * borderWidth;
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(ctxW , ctxH), NO, 0.0);
    UIBezierPath *outCirclePath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, ctxW, ctxH)];
    [borderColor set];
    [outCirclePath fill];
    UIBezierPath *circlePath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(borderWidth, borderWidth, width, height)];
    [circlePath addClip];
    [self drawAtPoint:CGPointMake(borderWidth, borderWidth)];
    UIImage *drawImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return drawImg;
}

+ (UIImage *)fd_circleImageWithImageName:(NSString *)imageName borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor {
    return [[self imageNamed:imageName] fd_circleImageWithBorderWidth:borderWidth borderColor:borderColor];
}


@end
