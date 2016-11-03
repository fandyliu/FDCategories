//
//  UIView+FDAdd.m
//  FDCategories
//
//  Created by fandy on 15/8/22.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import "UIView+FDAdd.h"

@implementation UIView (FDAdd)


#pragma mark - frameSet 设置
- (CGFloat)fd_x {
    return self.frame.origin.x;
}

- (void)setFd_x:(CGFloat)fd_x {
    CGRect frame = self.frame;
    frame.origin.x = fd_x;
    self.frame = frame;
}

- (CGFloat)fd_y {
    return self.frame.origin.y;
}

- (void)setFd_y:(CGFloat)fd_y {
    CGRect frame = self.frame;
    frame.origin.y = fd_y;
    self.frame = frame;
}

- (CGFloat)fd_width {
    return  self.frame.size.width;
}

- (void)setFd_width:(CGFloat)fd_width {
    CGRect frame = self.frame;
    frame.size.width = fd_width;
    self.frame = frame;
}

- (CGFloat)fd_height {
    return self.frame.size.height;
}

- (void)setFd_height:(CGFloat)fd_height {
    CGRect frame = self.frame;
    frame.size.height = fd_height;
    self.frame = frame;
}

- (void)setFd_centerX:(CGFloat)fd_centerX {
    CGPoint center = self.center;
    center.x = fd_centerX;
    self.center = center;
}

- (CGFloat)fd_centerX {
    return self.center.x;
}

- (void)setFd_centerY:(CGFloat)fd_centerY {
    CGPoint center = self.center;
    center.y = fd_centerY;
    self.center = center;
}

- (CGFloat)fd_centerY {
    return  self.center.y;
}

- (void)setFd_origin:(CGPoint)fd_origin {
    CGRect frame = self.frame;
    frame.origin = fd_origin;
    self.frame = frame;
}

- (CGPoint)fd_origin {
    return self.frame.origin;
}

- (void)setFd_size:(CGSize)fd_size {
    CGRect frame = self.frame;
    frame.size = fd_size;
    self.frame = frame;
}

- (CGSize)fd_size {
    return self.frame.size;
}

#pragma mark - other

+ (instancetype)fd_viewFromXib
{
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].firstObject;
}

- (BOOL)fd_intersectsWithView:(UIView *)view
{
    // bounds
    CGRect selfRect = [self convertRect:self.bounds toView:nil];
    CGRect viewRect = [view convertRect:view.bounds toView:nil];
    return CGRectIntersectsRect(selfRect, viewRect);
}



@end
