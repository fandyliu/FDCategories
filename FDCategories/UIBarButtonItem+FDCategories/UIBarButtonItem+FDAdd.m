//
//  UIBarButtonItem+FDAdd.m
//  FDCategories
//
//  Created by fandy on 15/8/22.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import "UIBarButtonItem+FDAdd.h"

@implementation UIBarButtonItem (FDAdd)

+ (UIBarButtonItem *)fd_barButtonItemWithImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage target:(id)target action:(SEL)action {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:highlightedImage forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    UIView *view = [[UIView alloc] initWithFrame:btn.bounds];
    [view addSubview:btn];
    UIBarButtonItem *item = [[self alloc] initWithCustomView:view];
    return item;
}


+ (UIBarButtonItem *)fd_barButtonItemWithImage:(UIImage *)image  selectedImage:(UIImage *)selectedImage target:(id)target action:(SEL)action {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:selectedImage forState:UIControlStateSelected];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    UIView *view = [[UIView alloc] initWithFrame:btn.bounds];
    [view addSubview:btn];
    UIBarButtonItem *item = [[self alloc] initWithCustomView:view];
    return item;
}



@end
