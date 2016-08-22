//
//  UIBarButtonItem+FDAdd.h
//  FDCategories
//
//  Created by QianTuFD on 16/8/22.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (FDAdd)

/**
 *  根据image和高亮image生成UIBarButtonItem
 *
 */
+ (UIBarButtonItem *)fd_barButtonItemWithImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage target:(id)target action:(SEL)action;

/**
 *  根据image和选中image生成UIBarButtonItem
 *
 */
+ (UIBarButtonItem *)fd_barButtonItemWithImage:(UIImage *)image  selectedImage:(UIImage *)selectedImage target:(id)target action:(SEL)action;


@end
