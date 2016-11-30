//
//  UIButton+FDAdd.m
//  FDCategories
//
//  Created by QianTuFD on 2016/08/12.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import "UIButton+FDAdd.h"

@implementation UIButton (FDAdd)

+ (UIButton *)createButtonWithFrame:(CGRect)frame
                         buttonType:(FDButtonType)type
                              title:(NSString *)title
                                tag:(NSInteger)tag
                             target:(id)target
                             action:(SEL)selector {
    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    button.titleLabel.font = [UIFont fontWithName:@"Avenir-Book" size:16.f];
    button.layer.borderWidth = 1.f;
    button.layer.cornerRadius = 3.f;
    button.tag = tag;
    
    if (type == FDButtonTypeNormal) {
        
        button.layer.borderColor = [UIColor blackColor].CGColor;
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        
    } else if (type == FDButtonTypeRed) {
        
        button.layer.borderColor = [UIColor redColor].CGColor;
        [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
        
    } else {
        
        button.layer.borderColor = [UIColor blackColor].CGColor;
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        
    }
    
    [button setTitle:title forState:UIControlStateNormal];
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    
    return button;

}

@end
