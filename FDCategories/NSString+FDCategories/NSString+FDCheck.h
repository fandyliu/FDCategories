//
//  NSString+FDCheck.h
//  FDCategories
//
//  Created by fandy on 15/8/22.
//  Copyright © 2015年 fandy. All rights reserved.
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
