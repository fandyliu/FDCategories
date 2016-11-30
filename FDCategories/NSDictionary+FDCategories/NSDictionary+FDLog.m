//
//  NSDictionary+FDLog.m
//  FDCategories
//
//  Created by fandy on 15/8/22.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import "NSDictionary+FDLog.h"

@implementation NSDictionary (FDLog)
/**
 *  字典输出中文
 */
-(NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
    NSMutableString *string = [NSMutableString string];
    
    [string appendString:@"{\n"];
    
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [string appendFormat:@"     %@ = ",key];
        [string appendFormat:@"%@;\n",obj];
    }];
    [string appendString:@"   }"];
    NSRange range = [string rangeOfString:@";" options:NSBackwardsSearch];
    
    if (range.location != NSNotFound) {
        [string deleteCharactersInRange:range];
    }
    return string;
}

@end
