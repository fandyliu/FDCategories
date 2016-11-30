//
//  UIView+FDAdd.h
//  FDCategories
//
//  Created by fandy on 15/8/22.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FDAdd)


@property CGFloat fd_x;
@property CGFloat fd_y;
@property CGFloat fd_width;
@property CGFloat fd_height;

@property CGFloat fd_centerX;
@property CGFloat fd_centerY;

@property CGPoint fd_origin;
@property CGSize fd_size;

/**
 *  快速根据xib创建View
 */
+ (instancetype)fd_viewFromXib;


/**
 *  判断self和view是否重叠
 */
- (BOOL)fd_intersectsWithView:(UIView *)view;


@end
