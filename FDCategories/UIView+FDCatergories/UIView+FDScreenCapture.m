//
//  UIView+FDScreenCapture.m
//  FDCategories
//
//  Created by fandy on 15/8/22.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import "UIView+FDScreenCapture.h"

@implementation UIView (FDScreenCapture)

- (UIImage *)fd_imageFromView {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0.0);
    if ([self respondsToSelector:@selector(drawViewHierarchyInRect:afterScreenUpdates:)]) {
        [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:NO];// 摆脱毛刺效果
    } else {
        [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    }
    UIImage * viewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return viewImage;
}


#pragma mark - 图片截取
- (void)fd_viewScreenCaptureSaveToPath:(NSString *)path WithImageRepresentation:(FDImageRepresentation)imageRepresentation  {
    UIImage *image = [self fd_imageFromView];
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
    UIImage *image = [self fd_imageFromView];
    NSData *data = UIImagePNGRepresentation(image);
    BOOL writeSuccess = [data writeToFile:path atomically:YES];
    if (!writeSuccess) {
        NSException *exc = [NSException exceptionWithName:@"未能写入成功" reason:@"可能是你的图片类型与你选择的格式不同" userInfo:nil];
        [exc raise];
    }
}



@end
