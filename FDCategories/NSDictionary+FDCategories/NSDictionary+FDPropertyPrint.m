//
//  NSDictionary+FDPropertyPrint.m
//  FDCategories
//
//  Created by QianTuFD on 16/8/22.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import "NSDictionary+FDPropertyPrint.h"

@implementation NSDictionary (FDPropertyPrint)

- (void)fd_printProperty {
    NSMutableString *strM = [NSMutableString string];
    
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull value, BOOL * _Nonnull stop) {
        if ([value isKindOfClass:[NSString class]]) {
            NSString *str = [NSString stringWithFormat:@"\n@property (nonatomic, strong) NSString *%@;\n", key];
            [strM appendString:str];
        } else if ([value isKindOfClass:[NSArray class]]) {
            NSString *str = [NSString stringWithFormat:@"\n@property (nonatomic, strong) NSArray *%@;\n", key];
            [strM appendString:str];
        } else if ([value isKindOfClass:[NSDictionary class]]) {
            NSString *str = [NSString stringWithFormat:@"\n@property (nonatomic, strong) NSDictionary *%@;\n", key];
            [strM appendString:str];
        } else if ([value isKindOfClass:NSClassFromString(@"__NSCFBoolean")]) {
            NSString *keyUpper = [self fd_firstCharUpper:key];
            NSString *str = [NSString stringWithFormat:@"\n@property (nonatomic, assign, getter=is%@) BOOL %@;\n", keyUpper, key];
            [strM appendString:str];
        } else if ([value isKindOfClass:[NSNumber class]]) {
            NSString *str = [NSString stringWithFormat:@"\n@property (nonatomic, assign) NSInteger %@;\n", key];
            [strM appendString:str];
        }
    }];
    NSLog(@"%@",strM);
}

- (NSString *)fd_firstCharUpper:(NSString *)str
{
    if (str.length == 0) return str;
    NSMutableString *string = [NSMutableString string];
    [string appendString:[NSString stringWithFormat:@"%c", [str characterAtIndex:0]].uppercaseString];
    if (str.length >= 2) [string appendString:[str substringFromIndex:1]];
    return string;
}


@end
