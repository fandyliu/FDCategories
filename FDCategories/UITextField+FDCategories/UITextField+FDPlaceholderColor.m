//
//  UITextField+FDPlaceholderColor.m
//  FDCategories
//
//  Created by fandy on 15/8/22.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import "UITextField+FDPlaceholderColor.h"
#import <objc/message.h>
@implementation UITextField (FDPlaceholderColor)


+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method m1 = class_getInstanceMethod(self, @selector(setPlaceholder:));
        Method m2 = class_getInstanceMethod(self, @selector(fd_setPlaceholder:));
        method_exchangeImplementations(m1, m2);
    });
}

- (void)setFd_placeholderColor:(UIColor *)fd_placeholderColor {
    //处理为nil时候保持默认
    if (fd_placeholderColor == nil) {
        return;
    }
    objc_setAssociatedObject(self, @"placeholderColor" ,fd_placeholderColor , OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    [self setValue:fd_placeholderColor forKeyPath:@"placeholderLabel.textColor"];
}

- (UIColor *)fd_placeholderColor {
    return objc_getAssociatedObject(self, @"placeholderColor");
}

- (void)fd_setPlaceholder:(NSString *)placeholder {
    [self fd_setPlaceholder:placeholder];
    self.fd_placeholderColor = self.fd_placeholderColor;
}


@end
