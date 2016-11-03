//
//  UIColor+FDFlatColors.m
//  FDCategories
//
//  Created by fandy on 15/9/1.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import "UIColor+FDFlatColors.h"

@implementation UIColor (FDFlatColors)

+ (UIColor *)fd_flatRedColor
{
    return FDColorFromRGB(0xE74C3C);
}
+ (UIColor *)fd_flatDarkRedColor
{
    return FDColorFromRGB(0xC0392B);
}

#pragma mark - Green
+ (UIColor *)fd_flatGreenColor
{
    return FDColorFromRGB(0x2ECC71);
}
+ (UIColor *)fd_flatDarkGreenColor
{
    return FDColorFromRGB(0x27AE60);
}


#pragma mark - Blue
+ (UIColor *)fd_flatBlueColor
{
    return FDColorFromRGB(0x3498DB);
}
+ (UIColor *)fd_flatDarkBlueColor
{
    return FDColorFromRGB(0x2980B9);
}


#pragma mark - Teal
+ (UIColor *)fd_flatTealColor
{
    return FDColorFromRGB(0x1ABC9C);
}
+ (UIColor *)fd_flatDarkTealColor
{
    return FDColorFromRGB(0x16A085);
}

#pragma mark - Purple
+ (UIColor *)fd_flatPurpleColor
{
    return FDColorFromRGB(0x9B59B6);
}
+ (UIColor *)fd_flatDarkPurpleColor
{
    return FDColorFromRGB(0x8E44AD);
}


#pragma mark - Yellow
+ (UIColor *)fd_flatYellowColor
{
    return FDColorFromRGB(0xF1C40F);
}
+ (UIColor *)fd_flatDarkYellowColor
{
    return FDColorFromRGB(0xF39C12);
}


#pragma mark - Orange
+ (UIColor *)fd_flatOrangeColor
{
    return FDColorFromRGB(0xE67E22);
}
+ (UIColor *)fd_flatDarkOrangeColor
{
    return FDColorFromRGB(0xD35400);
}



#pragma mark - Gray
+ (UIColor *)fd_flatGrayColor
{
    return FDColorFromRGB(0x95A5A6);
}

+ (UIColor *)fd_flatDarkGrayColor
{
    return FDColorFromRGB(0x7F8C8D);
}



#pragma mark - White
+ (UIColor *)fd_flatWhiteColor
{
    return FDColorFromRGB(0xECF0F1);
}

+ (UIColor *)fd_flatDarkWhiteColor
{
    return FDColorFromRGB(0xBDC3C7);
}



#pragma mark - Black
+ (UIColor *)fd_flatBlackColor
{
    return FDColorFromRGB(0x34495E);
}

+ (UIColor *)fd_flatDarkBlackColor
{
    return FDColorFromRGB(0x2C3E50);
}



#pragma mark - Random
+ (UIColor *)fd_randomFlatColor
{
    return [UIColor fd_randomFlatColorIncludeLightShades:YES darkShades:YES];
}

+ (UIColor *)fd_randomFlatLightColor
{
    return [UIColor fd_randomFlatColorIncludeLightShades:YES darkShades:NO];
}

+ (UIColor *)fd_randomFlatDarkColor
{
    return [UIColor fd_randomFlatColorIncludeLightShades:NO darkShades:YES];
}

+ (UIColor *)fd_randomFlatColorIncludeLightShades:(BOOL)useLightShades
                                    darkShades:(BOOL)useDarkShades;
{
    const NSInteger numberOfLightColors = 10;
    const NSInteger numberOfDarkColors = 10;
    NSAssert(useLightShades || useDarkShades, @"Must choose random color using at least light shades or dark shades.");
    
    
    u_int32_t numberOfColors = 0;
    if(useLightShades){
        numberOfColors += numberOfLightColors;
    }
    if(useDarkShades){
        numberOfColors += numberOfDarkColors;
    }
    
    u_int32_t chosenColor = arc4random_uniform(numberOfColors);
    
    if(!useLightShades){
        chosenColor += numberOfLightColors;
    }
    
    UIColor *color;
    switch (chosenColor) {
        case 0:
            color = [UIColor fd_flatRedColor];
            break;
        case 1:
            color = [UIColor fd_flatGreenColor];
            break;
        case 2:
            color = [UIColor fd_flatBlueColor];
            break;
        case 3:
            color = [UIColor fd_flatTealColor];
            break;
        case 4:
            color = [UIColor fd_flatPurpleColor];
            break;
        case 5:
            color = [UIColor fd_flatYellowColor];
            break;
        case 6:
            color = [UIColor fd_flatOrangeColor];
            break;
        case 7:
            color = [UIColor fd_flatGrayColor];
            break;
        case 8:
            color = [UIColor fd_flatWhiteColor];
            break;
        case 9:
            color = [UIColor fd_flatBlackColor];
            break;
        case 10:
            color = [UIColor fd_flatDarkRedColor];
            break;
        case 11:
            color = [UIColor fd_flatDarkGreenColor];
            break;
        case 12:
            color = [UIColor fd_flatDarkBlueColor];
            break;
        case 13:
            color = [UIColor fd_flatDarkTealColor];
            break;
        case 14:
            color = [UIColor fd_flatDarkPurpleColor];
            break;
        case 15:
            color = [UIColor fd_flatDarkYellowColor];
            break;
        case 16:
            color = [UIColor fd_flatDarkOrangeColor];
            break;
        case 17:
            color = [UIColor fd_flatDarkGrayColor];
            break;
        case 18:
            color = [UIColor fd_flatDarkWhiteColor];
            break;
        case 19:
            color = [UIColor fd_flatDarkBlackColor];
            break;
        case 20:
        default:
            NSAssert(0, @"Unrecognized color selected as random color");
            break;
    }
    
    return color;
}


@end
