//
//  NSDate+FDAdd.m
//  FDCategories
//
//  Created by QianTuFD on 16/8/22.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import "NSDate+FDAdd.h"

@implementation NSDate (FDAdd)



- (BOOL)fd_isToday {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
        return [calendar isDateInToday:self];
    } else {
        NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
        NSDateComponents *selfCmps = [calendar components:unit fromDate:self];
        NSDateComponents *currentCmps = [calendar components:unit fromDate:[NSDate date]];
        return [selfCmps isEqual:currentCmps];
    }
}

- (BOOL)fd_isYesterday {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
        return [calendar isDateInYesterday:self];
    } else {
        NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
        fmt.dateFormat = @"yyyyMMdd";
        NSString *selfStr = [fmt stringFromDate:self];
        NSString *currentStr = [fmt stringFromDate:[NSDate date]];
        NSDate *selfDate = [fmt dateFromString:selfStr];
        NSDate *currentDate = [fmt dateFromString:currentStr];
        NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
        NSDateComponents *cmps = [calendar components:unit fromDate:selfDate toDate:currentDate options:NSCalendarWrapComponents];
        return cmps.day == 1 && cmps.month == 0 && cmps.year == 0;
        
    }
}

- (BOOL)fd_isTomorrow {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
        return [calendar isDateInTomorrow:self];
    } else {
        NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
        fmt.dateFormat = @"yyyyMMdd";
        NSString *selfStr = [fmt stringFromDate:self];
        NSString *currentStr = [fmt stringFromDate:[NSDate date]];
        NSDate *selfDate = [fmt dateFromString:selfStr];
        NSDate *currentDate = [fmt dateFromString:currentStr];
        NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
        NSDateComponents *cmps = [calendar components:unit fromDate:selfDate toDate:currentDate options:NSCalendarWrapComponents];
        return cmps.day == -1 && cmps.month == 0 && cmps.year == 0;
    }
}

- (BOOL)fd_isThisYear {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger currentYear = [calendar component:NSCalendarUnitYear fromDate:[NSDate date]];
    NSInteger selfYear = [calendar component:NSCalendarUnitYear fromDate:self];
    return selfYear == currentYear;
}

- (NSDateComponents *)fd_componentsDifferenceToNow {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendarUnit units = NSCalendarUnitYear | NSCalendarUnitMonth |NSCalendarUnitDay | NSCalendarUnitHour |NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    return [calendar components:units fromDate:self toDate:[NSDate date] options:kNilOptions];
}

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
