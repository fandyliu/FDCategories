//
//  UIView+FDBorder.m
//  FDCategories
//
//  Created by fandy on 15/9/13.
//  Copyright © 2015年 fandy. All rights reserved.
//

#import "UIView+FDBorder.h"

@implementation UIView (FDBorder)

- (void)fd_addBorder:(FDViewBorderDirect)direct color:(UIColor *)color width:(CGFloat)width {
    if (direct == 0) return;
    if (direct & FDViewBorderDirectTop) {
        [self fd_addSingleBorder:FDViewBorderDirectTop color:color width:width];
    }
    if (direct & FDViewBorderDirectLeft) {
        [self fd_addSingleBorder:FDViewBorderDirectLeft color:color width:width];
    }
    if (direct & FDViewBorderDirectBottom) {
        [self fd_addSingleBorder:FDViewBorderDirectBottom color:color width:width];
    }
    if (direct & FDViewBorderDirectRight) {
        [self fd_addSingleBorder:FDViewBorderDirectRight color:color width:width];
    }
}

- (void)fd_addSingleBorder:(FDViewBorderDirect)direct color:(UIColor *)color width:(CGFloat)width {
    if (direct == 0) return;
    UIView *line = [[UIView alloc] init];
    line.backgroundColor = color;
    [self addSubview:line];
    line.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSDictionary *views = NSDictionaryOfVariableBindings(line);
    NSDictionary *metrics = NSDictionaryOfVariableBindings(@(width));
    
    NSString *vfl_H=@"";
    NSString *vfl_W=@"";
    
    switch (direct) {
        case FDViewBorderDirectTop:
        {
            vfl_H = @"H:|-0-[line]-0-|";
            vfl_W = @"V:|-0-[line(==width)]|";
        }
            break;
        case FDViewBorderDirectLeft:
        {
            vfl_H = @"H:|-0-[line(==width)]|";
            vfl_W = @"V:|-0-[line]-0-|";
        }
            break;
        case FDViewBorderDirectBottom:
        {
            vfl_H = @"H:|-0-[line]-0-|";
            vfl_W = @"V:|[line(==width)]-0-|";
        }
            break;
        case FDViewBorderDirectRight:
        {
            vfl_H = @"H:|[line(==width)]-0-|";
            vfl_W = @"V:|-0-[line]-0-|";
        }
            break;
        default:
            return;
            break;
    }
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfl_H options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfl_W options:0 metrics:metrics views:views]];
}

- (void)fd_setBorder:(UIColor *)color width:(CGFloat)width {
    CALayer *layer = self.layer;
    layer.borderColor = color.CGColor;
    layer.borderWidth = width;
}


@end
