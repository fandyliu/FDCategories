//
//  NSString+FDAdd.h
//  FDCategories
//
//  Created by QianTuFD on 16/9/2.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (FDAdd)

/**
 *  删除空格
 */
@property (nonatomic, copy, readonly) NSString *fd_noSpaceString;

/*
 *  时间戳对应的NSDate
 */
@property (nonatomic, strong, readonly) NSDate *fd_date;


/**
 *  时间戳转格式化的时间字符串
 */
- (NSString *)fd_timestampToTimeStringWithFormatString:(NSString *)formatString;

@end
