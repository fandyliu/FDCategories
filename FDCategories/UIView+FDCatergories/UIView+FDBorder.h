//
//  UIView+FDBorder.h
//  FDCategories
//
//  Created by fandy on 15/9/13.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, FDViewBorderDirect) {
    FDViewBorderDirectTop = 1 << 0,
    FDViewBorderDirectLeft = 1 << 1,
    FDViewBorderDirectBottom = 1 << 2,
    FDViewBorderDirectRight = 1 << 3,
};




@interface UIView (FDBorder)


/**
 *  添加边框支持多方向添加： (注给scrollView添加会出错)
 */
- (void)fd_addBorder:(FDViewBorderDirect)direct color:(UIColor *)color width:(CGFloat)width;
/**
 *  添加边框(只能添加一个多的话不添加)： (注给scrollView添加会出错)
 */
- (void)fd_addSingleBorder:(FDViewBorderDirect)direct color:(UIColor *)color width:(CGFloat)width;
/**
 *  添加边框:四边
 */
- (void)fd_setBorder:(UIColor *)color width:(CGFloat)width;


@end
