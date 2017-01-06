//
//  NSString+FDHanziToPinYin.m
//  FDCategories
//
//  Created by QianTuFD on 2017/1/5.
//  Copyright © 2017年 fandy. All rights reserved.
//

#import "NSString+FDHanziToPinYin.h"

@implementation NSString (FDHanziToPinYin)

- (NSString *)stringToPinYin {
    //转成了可变字符串
    NSMutableString *str = [NSMutableString stringWithString:self];
    //先转换为带声调的拼音
    CFStringTransform((CFMutableStringRef)str,NULL, kCFStringTransformMandarinLatin,NO);
    //再转换为不带声调的拼音
    CFStringTransform((CFMutableStringRef)str,NULL, kCFStringTransformStripDiacritics,NO);
    
    str =(NSMutableString *)[str stringByReplacingOccurrencesOfString:@" " withString:@""];
//    //转化为大写拼音
//    NSString *pinYin = [str capitalizedString];
    return str;
}

@end
