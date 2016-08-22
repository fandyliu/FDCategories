//
//  NSDate+FDAdd.h
//  FDCategories
//
//  Created by QianTuFD on 16/8/22.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSDate (FDAdd)


- (BOOL)fd_isToday;

- (BOOL)fd_isYesterday;

- (BOOL)fd_isTomorrow;

- (BOOL)fd_isThisYear;

/**
 *  获取与调用date与调用时的时间差
 *
 *  @return 组件差值
 */
- (NSDateComponents *)fd_componentsDifferenceToNow;
/**
 *  根据一个时间字符和形式串生成Date
 *
 *  @param dateString 字符串 @"2222-02-22 22:22:22"
 *  @param dateFormat 形式 @"yyyy-MM-dd HH:mm:ss"
 *
 *  @return date
 */
+ (NSDate *)fd_dateFromString:(NSString *)String dateFormat:(NSString *)dateFormat;

/**
 *  根据dateformat生成对应类型的字符串
 *
 *  @param dateFormat 形式 @"前天 HH:mm:ss"
 *
 *  @return str @"前天 12:22:22"
 */
- (NSString *)fd_stringFromDateFormat:(NSString *)dateFormat;


// 获取今天周几 // 周日是1 周一是2
+ (NSInteger)fd_getCurrentWeekday;

// 这周是今年的第几周
+ (NSInteger)fd_getWeekOfThisYear;

@end
