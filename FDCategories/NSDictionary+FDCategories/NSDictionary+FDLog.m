//
//  NSDictionary+FDLog.m
//  FDCategories
//
//  Created by QianTuFD on 16/8/22.
//  Copyright © 2016年 fandy. All rights reserved.
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
        [string appendFormat:@"  %@ = ",key];
        [string appendFormat:@"%@;\n",obj];
    }];
    [string appendString:@"   }"];
    return string;
}

@end
