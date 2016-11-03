//
//  UIColor+FDFlatColors.h
//  FDCategories
//
//  Created by fandy on 15/9/1.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>


#define FDColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 \
alpha:1.0]


@interface UIColor (FDFlatColors)

+ (UIColor *)fd_flatRedColor;
+ (UIColor *)fd_flatDarkRedColor;

+ (UIColor *)fd_flatGreenColor;
+ (UIColor *)fd_flatDarkGreenColor;

+ (UIColor *)fd_flatBlueColor;
+ (UIColor *)fd_flatDarkBlueColor;

+ (UIColor *)fd_flatTealColor;
+ (UIColor *)fd_flatDarkTealColor;

+ (UIColor *)fd_flatPurpleColor;
+ (UIColor *)fd_flatDarkPurpleColor;

+ (UIColor *)fd_flatBlackColor;
+ (UIColor *)fd_flatDarkBlackColor;

+ (UIColor *)fd_flatYellowColor;
+ (UIColor *)fd_flatDarkYellowColor;

+ (UIColor *)fd_flatOrangeColor;
+ (UIColor *)fd_flatDarkOrangeColor;

+ (UIColor *)fd_flatWhiteColor;
+ (UIColor *)fd_flatDarkWhiteColor;

+ (UIColor *)fd_flatGrayColor;
+ (UIColor *)fd_flatDarkGrayColor;

+ (UIColor *)fd_randomFlatColor;
+ (UIColor *)fd_randomFlatLightColor;
+ (UIColor *)fd_randomFlatDarkColor;
@end
