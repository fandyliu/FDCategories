//
//  NSString+FDAdd.m
//  FDCategories
//
//  Created by QianTuFD on 16/9/2.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import "NSString+FDAdd.h"

@implementation NSString (FDAdd)

- (NSString *)fd_noSpaceString {
    NSMutableString *strM = [NSMutableString stringWithString:self];
    [strM replaceOccurrencesOfString:@" " withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, strM.length)];
    return strM;
}

- (NSDate *)fd_date {
    NSTimeInterval timeInterval = self.floatValue;
    return [NSDate dateWithTimeIntervalSince1970:timeInterval];
}

- (NSString *)fd_timestampToTimeStringWithFormatString:(NSString *)formatString {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = formatString;
    return [formatter stringFromDate:self.fd_date];
}

@end
