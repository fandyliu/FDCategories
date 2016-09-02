//
//  CALayer+FDAnimation.m
//  FDCategories
//
//  Created by QianTuFD on 16/9/1.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import "CALayer+FDAnimation.h"

@implementation CALayer (FDAnimation)

- (NSString *)fd_getAnimKeyPathType:(FDAnimKeyPathType)animKeyPathType {
    switch (animKeyPathType) {
        case FDAnimKeyPathTypeRotation:
            return @"transform.rotation";
            break;
        case FDAnimKeyPathTypeRotationX:
            return @"transform.rotation.x";
            break;
        case FDAnimKeyPathTypeRotationY:
            return @"transform.rotation.y";
            break;
        case FDAnimKeyPathTypeRotationZ:
            return @"transform.rotation.z";
            break;
        case FDAnimKeyPathTypeScale:
            return @"transform.scale";
            break;
        case FDAnimKeyPathTypeScaleX:
            return @"transform.scale.x";
            break;
        case FDAnimKeyPathTypeScaleY:
            return @"transform.scale.y";
            break;
        case FDAnimKeyPathTypeScaleZ:
            return @"transform.scale.z";
            break;
        case FDAnimKeyPathTypeTranslation:
            return @"transform.translation";
            break;
        case FDAnimKeyPathTypeTranslationX:
            return @"transform.translation.x";
            break;
        case FDAnimKeyPathTypeTranslationY:
            return @"transform.translation.y";
            break;
        case FDAnimKeyPathTypeTranslationZ:
            return @"transform.translation.z";
            break;
        default:
            break;
    }
}

- (CAAnimation *)fd_addAnimationWithKeyPath:(FDAnimKeyPathType)keyPath values:(NSArray *)values duration:(NSTimeInterval)duration repeatCount:(NSUInteger)repeatCount {
    NSString *key = @"FDKeyframeAnimation";
    if ([self animationForKey:key] != nil) {
        [self removeAnimationForKey:key];
    }
    NSString *path = [self fd_getAnimKeyPathType:keyPath];
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:path];
    animation.values = values;
    animation.duration = duration;
    animation.repeatCount = repeatCount;
    animation.removedOnCompletion = YES;
    [self addAnimation:animation forKey:key];  // 默认为 kCATransition
    return animation;
}

- (CAAnimation *)fd_addReverseAnimation:(FDAnimKeyPathType)direction duration:(NSTimeInterval)duration isReverse:(BOOL)isReverse repeatCount:(NSUInteger)repeatCount timingFuncName:(NSString *)timingFuncName {
    
    NSString *key = @"FDReverseAnimation";
    if([self animationForKey:key]!=nil){
        [self removeAnimationForKey:key];
    }
    
    if (direction < 1 || direction > 3) return nil;
    NSString *keyPath = [self fd_getAnimKeyPathType:direction];

    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:keyPath];
    animation.fromValue=@(0);
    animation.toValue = @(M_PI_2);
    animation.duration = duration;
    animation.autoreverses = isReverse;
    animation.removedOnCompletion = YES;
    animation.repeatCount = repeatCount;
    [self addAnimation:animation forKey:key];
    return animation;
}







@end
