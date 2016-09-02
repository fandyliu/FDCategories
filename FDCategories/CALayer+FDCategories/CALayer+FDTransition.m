//
//  CALayer+FDTransition.m
//  FDCategories
//
//  Created by QianTuFD on 16/9/2.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import "CALayer+FDTransition.h"

@implementation CALayer (FDTransition)

- (CATransition *)fd_addTransitionWithType:(FDTransitionType)type subType:(FDTransitionSubtype)subType timingFunctionType:(FDMediaTimingFunctionType)timingFunctionType duration:(CGFloat)duration {
    NSString *key = @"FDTransition";
    if ([self animationForKey:key] != nil) {
        [self removeAnimationForKey:key];
    }
    CATransition *transition = [CATransition animation];
    transition.duration = duration;
    transition.type = [self fd_getTransitionType:type];
    transition.subtype = [self fd_getTransitionSubtype:subType];
    transition.timingFunction = [CAMediaTimingFunction functionWithName:[self fd_getMediaTimingFunctionType:timingFunctionType]];
    transition.removedOnCompletion = YES;
    [self addAnimation:transition forKey:key];
    return transition;
}

- (NSString *)fd_getMediaTimingFunctionType:(FDMediaTimingFunctionType)curveType {
    NSArray *curveTypeArray=@[kCAMediaTimingFunctionDefault, kCAMediaTimingFunctionEaseIn, kCAMediaTimingFunctionEaseOut, kCAMediaTimingFunctionEaseInEaseOut, kCAMediaTimingFunctionLinear];
    return [self fd_stringFromArray:curveTypeArray index:curveType isRamdom:(curveType == FDMediaTimingFunctionTypeRamdom)];
    
}

- (NSString *)fd_getTransitionSubtype:(FDTransitionSubtype)subtype {
    NSArray *transitionSubtypeArray=@[kCATransitionFromRight,kCATransitionFromLeft,kCATransitionFromTop,kCATransitionFromBottom];
    return [self fd_stringFromArray:transitionSubtypeArray index:subtype isRamdom:(subtype == FDTransitionSubtypeFromRamdom)];
}

- (NSString *)fd_getTransitionType:(FDTransitionType)type {
    NSArray *transitionTypeArray = @[kCATransitionFade,kCATransitionMoveIn,kCATransitionPush,kCATransitionReveal,@"pageCurl",@"pageUnCurl",@"rippleEffect",@"suckEffect",@"cube",@"oglFlip"];
    return [self fd_stringFromArray:transitionTypeArray index:type isRamdom:(type == FDTransitionTypeRamdom)];
}

- (NSString *)fd_stringFromArray:(NSArray *)array index:(NSUInteger)index isRamdom:(BOOL)isRamdom{
    NSUInteger count = array.count;
    NSUInteger i = isRamdom ? arc4random_uniform((u_int32_t)count) : index;
    return array[i];
}

@end
