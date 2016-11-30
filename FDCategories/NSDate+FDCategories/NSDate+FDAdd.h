//
//  NSDate+FDAdd.h
//  FDCategories
//
//  Created by fandy on 15/8/22.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSDate (FDAdd)

/** 时间戳 */
@property (nonatomic, copy, readonly) NSString *fd_timestamp;
/** 时间成分 */
@property (nonatomic, strong, readonly) NSDateComponents *fd_components;
/** 只有年月日的date */
@property (nonatomic, strong, readonly) NSDate *fd_ymdDate;
/** yyyy-MM-dd HH:mm:ss 形式时间字符串 */
@property (nonatomic, copy, readonly) NSString *fd_timeString;

- (BOOL)fd_isToday;

- (BOOL)fd_isYesterday;

- (BOOL)fd_isTomorrow;

- (BOOL)fd_isThisYear;


/**
 *  获取从两个date组件差值
 */
+ (NSDateComponents *)fd_components:(NSCalendarUnit)unitFlags fromDate:(NSDate *)fromDate toDate:(NSDate *)toDate;

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
