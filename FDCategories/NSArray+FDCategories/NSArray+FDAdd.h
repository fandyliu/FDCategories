//
//  NSArray+FDAdd.h
//  FDCategories
//
//  Created by QianTuFD on 16/8/23.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (FDAdd)


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







@end
