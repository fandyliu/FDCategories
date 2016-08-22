//
//  UIView+FDScreenCapture.m
//  FDCategories
//
//  Created by QianTuFD on 16/8/22.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import "UIView+FDScreenCapture.h"

@implementation UIView (FDScreenCapture)

#pragma mark - 图片截取
- (void)fd_viewScreenCaptureSaveToPath:(NSString *)path WithImageRepresentation:(FDImageRepresentation)imageRepresentation  {
    UIImage *image = [self fd_drawImage];
    NSData *data = [[NSData alloc] init];
    if (imageRepresentation == FDImageJPEGRepresentation) {
        data = UIImageJPEGRepresentation(image, 1);
    }  else if (imageRepresentation == FDImagePNGRepresentation) {
        data = UIImagePNGRepresentation(image);
    }
    BOOL writeSuccess = [data writeToFile:path atomically:YES];
    if (!writeSuccess) {
        NSException *exc = [NSException exceptionWithName:@"未能写入成功" reason:@"可能是你的图片类型与你选择的格式不同" userInfo:nil];
        [exc raise];
    }
}

- (void)fd_viewScreenCaptureSaveToPath:(NSString *)path {
    UIImage *image = [self fd_drawImage];
    NSData *data = UIImagePNGRepresentation(image);
    BOOL writeSuccess = [data writeToFile:path atomically:YES];
    if (!writeSuccess) {
        NSException *exc = [NSException exceptionWithName:@"未能写入成功" reason:@"可能是你的图片类型与你选择的格式不同" userInfo:nil];
        [exc raise];
    }
}

- (UIImage *)fd_drawImage {
    UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, 0.0);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    [self.layer renderInContext:ctx];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    return image;
}


@end
