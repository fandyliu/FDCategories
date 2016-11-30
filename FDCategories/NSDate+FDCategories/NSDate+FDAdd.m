//
//  NSDate+FDAdd.m
//  FDCategories
//
//  Created by fandy on 15/8/22.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import "NSDate+FDAdd.h"

@implementation NSDate (FDAdd)

#pragma mark - 属性
- (NSString *)fd_timestamp {
    NSTimeInterval timeInterval = [self timeIntervalSince1970];
    NSString *timeStr = [NSString stringWithFormat:@"%.0f",timeInterval];
    return timeStr;
}

- (NSDateComponents *)fd_components {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    return [calendar components:unit fromDate:self];
}

- (NSDate *)fd_ymdDate {
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyyMMdd";
    NSString *dateStr = [fmt stringFromDate:self];
    return [fmt dateFromString:dateStr];
}


- (NSString *)fd_timeString {
    return [self fd_stringFromDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

#pragma mark - 是否是今天昨天明天今年
- (BOOL)fd_isToday {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
        return [calendar isDateInToday:self];
    } else {
        return [self callWithValue:0];
    }
}

- (BOOL)fd_isYesterday {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
        return [calendar isDateInYesterday:self];
    } else {
        return [self callWithValue:1];
    }
}

- (BOOL)fd_isTomorrow {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
        return [calendar isDateInTomorrow:self];
    } else {
        return [self callWithValue:-1];
    }
}

- (BOOL)callWithValue:(NSInteger)value {
    NSDateComponents *selfComponents = self.fd_components;
    NSDateComponents *currentComponents = [NSDate date].fd_components;
    return selfComponents.year == currentComponents.year && selfComponents.month == currentComponents.month && (selfComponents.day + value) == currentComponents.day;
}

- (BOOL)fd_isThisYear {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger currentYear = [calendar component:NSCalendarUnitYear fromDate:[NSDate date]];
    NSInteger selfYear = [calendar component:NSCalendarUnitYear fromDate:self];
    return selfYear == currentYear;
}


#pragma mark - components
+ (NSDateComponents *)fd_components:(NSCalendarUnit)unitFlags fromDate:(NSDate *)fromDate toDate:(NSDate *)toDate {
    NSCalendar *calendar=[NSCalendar currentCalendar];
    return [calendar components:unitFlags fromDate:fromDate toDate:toDate options:0];
}

#pragma mark - dateFormatter
+ (NSDate *)fd_dateFromString:(NSString *)String dateFormat:(NSString *)dateFormat {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = dateFormat;
    return [dateFormatter dateFromString:String];
}

- (NSString *)fd_stringFromDateFormat:(NSString *)dateFormat {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = dateFormat;
    return [dateFormatter stringFromDate:self];
}

#pragma mark - 其他
+ (NSInteger)fd_getCurrentWeekday {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    // 真机上需要设置区域，才能正确获取本地日期:zh_CN
    calendar.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
    // Weekday in the Gregorian calendar, n is 7 and Sunday is represented by 1.
    NSDateComponents *week = [calendar components:NSCalendarUnitWeekday fromDate:[NSDate date]];
    return [week weekday];
}

+ (NSInteger)fd_getWeekOfThisYear {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *currentDate = [NSDate date];
    NSInteger week = [calendar ordinalityOfUnit:NSCalendarUnitWeekday inUnit:NSCalendarUnitYear forDate:currentDate];
    return week;
}
@end
