//
//  NSString+FDCheck.m
//  FDCategories
//
//  Created by QianTuFD on 16/8/22.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import "NSString+FDCheck.h"

//数字
#define NUM @"1234567890"
//字母
#define ALPHA @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

@implementation NSString (FDCheck)

//简单处理  是否是身份证
-(BOOL)isIDNumber
{
    if (self.length==18) {
        //前17位必须是数字 后一位必须是数字或字母
        
        NSCharacterSet *csNumber=[[NSCharacterSet characterSetWithCharactersInString:NUM] invertedSet];//数字
        NSString *filtered =[[self componentsSeparatedByCharactersInSet:csNumber] componentsJoinedByString:@""];//数字
        NSCharacterSet *csAlphabet=[[NSCharacterSet characterSetWithCharactersInString:ALPHA]invertedSet];
        NSString *filteredAlphabet=[[self componentsSeparatedByCharactersInSet:csAlphabet] componentsJoinedByString:@""];//大小写字母
        
        //        NSCharacterSet *csNumberAndAlphabet=[[NSCharacterSet characterSetWithCharactersInString:ALPHANUM] invertedSet];
        //        NSString *str=[[self componentsSeparatedByCharactersInSet:csNumberAndAlphabet] componentsJoinedByString:@""];
        
        for (int i=0;i<self.length;i++)
        {
            NSString *s = [self  substringWithRange:NSMakeRange(i, 1)];
            if (i==self.length-1)
            {
                
                if (![s  isEqualToString:filteredAlphabet]&&!([filtered rangeOfString:s].length>0))
                {
                    
                    return false;
                }
                
                continue;
            }else if (!([filtered rangeOfString:s].length>0)&&i!=(self.length-1))
            {
                return false;
            }
        }
        
        return true;
        
    }else
    {
        return false;
    }
    
}

//利用正则表达式验证邮箱格式
- (BOOL)isValidateEmail
{
    NSString *emailCheck = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",emailCheck];
    return [emailTest evaluateWithObject:self];
}
- (BOOL)isMobileNumber
{
    //    /**
    //     * 手机号码
    //     * 移动：134[0-8],135,136,137,138,139,150,151,157,158,159,182,187,188
    //     * 联通：130,131,132,152,155,156,185,186
    //     * 电信：133,1349,153,180,189
    //     */
    //    NSString * MOBILE = @"^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$";
    //    /**
    //     10         * 中国移动：China Mobile
    //     11         * 134[0-8],135,136,137,138,139,150,151,157,158,159,182,187,188
    //     12         */
    //    NSString * CM = @"^1(34[0-8]|(3[5-9]|5[017-9]|8[278])\\d)\\d{7}$";
    //    /**
    //     15         * 中国联通：China Unicom
    //     16         * 130,131,132,152,155,156,185,186
    //     17         */
    //    NSString * CU = @"^1(3[0-2]|5[256]|8[56])\\d{8}$";
    //    /**
    //     20         * 中国电信：China Telecom
    //     21         * 133,1349,153,180,189
    //     22         */
    //    NSString * CT = @"^1((33|53|8[09])[0-9]|349)\\d{7}$";
    //    /**
    //     25         * 大陆地区固话及小灵通
    //     26         * 区号：010,020,021,022,023,024,025,027,028,029
    //     27         * 号码：七位或八位
    //     28         */
    //  //  NSString * PHS = @"^0(10|2[0-5789]|\\d{3})\\d{7,8}$";
    //
    //    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    //    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];
    //    NSPredicate *regextestcu = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];
    //    NSPredicate *regextestct = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];
    //   // NSPredicate *regextestphs = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", PHS];
    //
    //    if (([regextestmobile evaluateWithObject:self] == YES)
    //        || ([regextestcm evaluateWithObject:self] == YES)
    //        || ([regextestct evaluateWithObject:self] == YES)
    //        || ([regextestcu evaluateWithObject:self] == YES)
    //        )
    //    {
    //        return YES;
    //    }
    //    else
    //    {
    //        return NO;
    
    
    //    }
    
    if ([self isEmpty]) {
        return NO;
    }
    
    if ([self isNumText]) {
        NSString *str=[self substringToIndex:1];
        if ([str isEqualToString:@"1"]) {
            
            if (self.length==11) {
                return YES;
            }else{
                return NO;
                
            }
            
        }else return NO;
        
    }return NO;
    
    
    
}

- (NSString *) trimming {
    
    return [self stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
}
- (BOOL)isNumText {
    
    [NSCharacterSet decimalDigitCharacterSet];
    if ([[self stringByTrimmingCharactersInSet: [NSCharacterSet decimalDigitCharacterSet]]trimming].length >0) {
        return NO;
    }else{
        return YES;
    }
    
}

-(BOOL)isEmpty {
    
    if (!self) {
        return YES;
    }else if ([self isEqualToString:@"(null)"]||[self isEqualToString:@"(Null)"]||[[NSNull null] isEqual:self]) {
        return YES;
    } else {
        //A character set containing only the whitespace characters space (U+0020) and tab (U+0009) and the newline and nextline characters (U+000A–U+000D, U+0085).
        NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        
        //Returns a new string made by removing from both ends of the receiver characters contained in a given character set.
        NSString *trimedString = [self stringByTrimmingCharactersInSet:set];
        
        if ([trimedString length] == 0) {
            return YES;
        } else {
            return NO;
        }
    }
}

-(BOOL)isValidatePassword{
    //对密码正则判断6-16位数字＋字母组合
    NSString *regstr = @"(?!^[0-9]+$)(?!^[a-zA-Z]+$)^([0-9]|[a-z]|[A-Z]){6,16}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regstr];
    return [predicate evaluateWithObject:self];
}


@end
