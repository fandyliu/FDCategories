//
//  UIColor+FDHexColor.h
//  FDCategories
//
//  Created by fandy on 15/8/24.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>


#define FDColor(r, g, b) [UIColor colorWithRed: (r) / 255.0f green:(g) / 255.0f blue:(b) / 255.0f alpha:1]

@interface UIColor (FDHexColor)

/**
 *  十六进制颜色>>支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 *  如果格式不正确返回clearColor
 */
+ (UIColor *)fd_colorWithHexString:(NSString *)color;


/**
 *  十六进制颜色>>支持@“#123456”、 @“0X123456”、 @“123456”三种格式 
 *  如果格式不正确返回clearColor
 */
+ (UIColor *)fd_colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

@end
