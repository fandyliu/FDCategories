//
//  NSURL+FDAdd.m
//  FDCategories
//
//  Created by QianTuFD on 16/9/13.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import "NSURL+FDAdd.h"

@implementation NSURL (FDAdd)

- (NSDictionary *)fd_queryComponents {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSString *query = [self query]; // key1=value1&key2=value2
    if (query.length) {
        NSArray *components = [query componentsSeparatedByString:@"&"];
        for (NSString *component in components) {
            if (![component containsString:@"="]) continue;
            NSArray *keyAndValue = [component componentsSeparatedByString:@"="];
            if ([keyAndValue count] == 2) {
                NSString *key = [keyAndValue firstObject];
                NSString *value = [keyAndValue lastObject];
                if ([key length] && [value length]) {
                    [dict setObject:value forKey:key];
                }
            }
        }
    }
    
    
    return dict;
}


@end
