//
//  NSString+FDTextSize.m
//  FDCategories
//
//  Created by QianTuFD on 16/8/22.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import "NSString+FDTextSize.h"

@implementation NSString (FDTextSize)

- (CGSize)fd_textSizeWithContentSize:(CGSize)size font:(UIFont *)font {
    NSDictionary *attrs = @{
                            NSFontAttributeName: font
                            };
    return [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

- (CGFloat)fd_textHeightWithContentWidth:(CGFloat)width font:(UIFont *)font {
    CGSize size = CGSizeMake(width, MAXFLOAT);
    return [self fd_textSizeWithContentSize:size font:font].height;
}

- (CGFloat)fd_textWidthWithContentHeight:(CGFloat)height font:(UIFont *)font {
    CGSize size = CGSizeMake(MAXFLOAT, height);
    return [self fd_textSizeWithContentSize:size font:font].width;
}



@end
