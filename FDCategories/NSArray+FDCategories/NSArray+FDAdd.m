//
//  NSArray+FDAdd.m
//  FDCategories
//
//  Created by fandy on 15/8/23.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import "NSArray+FDAdd.h"

@implementation NSArray (FDAdd)

#pragma mark - 数组比较 (去除顺序)
- (BOOL)fd_compareIgnoreObjectOrderWithArray:(NSArray *)array {
    NSSet *selfSet = [NSSet setWithArray:self];
    NSSet *cmpSet = [NSSet setWithArray:array];
    return [selfSet isEqualToSet:cmpSet];
}

#pragma mark - 返回当前数组与对比数组的交集
- (NSArray *)fd_arrayByIntersectionWithArray:(NSArray *)array {
    NSMutableArray *intersectionArray = [NSMutableArray array];
    if (self.count == 0) return nil;
    if (array == nil || array.count == 0) return nil;
    for (id obj in self) {
        if ([array containsObject:obj]) {
            [intersectionArray addObject:obj];
        }
    }
    return intersectionArray.count == 0 ? nil: intersectionArray;
}

#pragma mark - 返回当前数组去除与对比数组相同元素的结果数组
- (NSArray *)fd_arrayByMinusWithArray:(NSArray *)array {
    if (self.count == 0) return nil;
    if (array.count == 0) return self;
    NSMutableArray *minusArray = [NSMutableArray arrayWithArray:self];
    for (id obj in array) {
        if ([minusArray containsObject:obj]) {
            [minusArray removeObject:obj];
        }
    }
    return minusArray;
}

#pragma mark - 将数组转换为字符串
- (NSString *)fd_string {
    if (self.count == 0) return @"";
    NSMutableString *resultStr = [NSMutableString string];
    for (id obj in self) {
        [resultStr appendFormat:@"%@,",obj];
    }
    return [resultStr substringWithRange:NSMakeRange(0, resultStr.length-1)];
}

#pragma mark - 安全下标访问
- (id)safeObjectAtIndex:(NSUInteger)index {
    if (index < self.count) {
        return [self objectAtIndex:index];
    }else if (self.count > 0) {
        return [self objectAtIndex:0];
    }else {
        return nil;
    }
}

@end
