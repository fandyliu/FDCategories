//
//  NSString+FDTextSize.h
//  FDCategories
//
//  Created by fandy on 15/8/22.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (FDTextSize)

/**
 *  根据Size约束的高度约束计算String的Size
 *
 */
- (CGSize)fd_textSizeWithContentSize:(CGSize)size font:(UIFont *)font;

/**
 *  根据String的宽度约束计算String的高度
 *
 */
- (CGFloat)fd_textHeightWithContentWidth:(CGFloat)width font:(UIFont *)font;


/**
 *  根据String的高度约束计算String的宽度
 *
 */
- (CGFloat)fd_textWidthWithContentHeight:(CGFloat)height font:(UIFont *)font;
@end
