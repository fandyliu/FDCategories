//
//  UIButton+FDAdd.h
//  FDCategories
//
//  Created by QianTuFD on 2016/08/12.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, FDButtonType) {
    FDButtonTypeNormal,
    FDButtonTypeRed
};

@interface UIButton (FDAdd)


+ (UIButton *)createButtonWithFrame:(CGRect)frame
                         buttonType:(FDButtonType)type
                              title:(NSString *)title
                                tag:(NSInteger)tag
                             target:(id)target
                             action:(SEL)selector;

@end
