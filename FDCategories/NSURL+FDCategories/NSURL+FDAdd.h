//
//  NSURL+FDAdd.h
//  FDCategories
//
//  Created by QianTuFD on 16/9/13.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (FDAdd)
/**
 *  返回URL请求参数字典
 */
- (NSDictionary *)fd_queryComponents;

@end
