//
//  NSArray+FDAdd.h
//  FDCategories
//
//  Created by fandy on 15/8/23.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray<ObjectType> (FDAdd)


/**
 *  数组比较 (去除顺序)
 */
- (BOOL)fd_compareIgnoreObjectOrderWithArray:(NSArray *)array;

/**
 *  返回当前数组与对比数组的交集
 */
- (NSArray *)fd_arrayByIntersectionWithArray:(NSArray *)array;

/**
 *  返回当前数组去除与对比数组相同元素的结果数组;
 */
- (NSArray *)fd_arrayByMinusWithArray:(NSArray *)array;

/**
 *  将数组转换为字符串
 */
- (NSString *)fd_string;


/**
 安全下标访问越界返回0下标对应的元素 如果是空的返回nil
 */
- (ObjectType)safeObjectAtIndex:(NSUInteger)index;




@end
