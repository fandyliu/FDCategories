//
//  NSString+FDCheck.h
//  FDCategories
//
//  Created by QianTuFD on 16/8/22.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (FDCheck)
/**
 *  简单处理,判断是否是身份证
 */
- (BOOL)isIDNumber;
- (BOOL)isMobileNumber;
- (BOOL)isValidateEmail;
- (BOOL)isEmpty;
- (BOOL)isValidatePassword;

@end
