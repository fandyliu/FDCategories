//
//  CALayer+FDTransition.h
//  FDCategories
//
//  Created by QianTuFD on 16/9/2.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

/*
 *  动画类型
 *   cameraIrisHollowOpen  //相机镜头打开效果(不支持过渡方向)
     cameraIrisHollowClose //相机镜头关上效果(不支持过渡方向)
 */
typedef NS_ENUM(NSUInteger, FDTransitionType) {
    // 交叉淡化过渡
    FDTransitionTypeFade,
    // 新视图移到旧视图上面
    FDTransitionTypeMoveIn,
    // 新视图把旧视图推出去
    FDTransitionTypePush,
    // 将旧视图移开,显示下面的新视图 
    FDTransitionTypeReveal,
    // 私有api 可能导致审核不通过
    // 向上翻一页
    FDTransitionTypePageCurl,
    // 向下翻一页
    FDTransitionTypePageUnCurl,
    // 水波效果
    FDTransitionTypeRippleEffect,
    // 收缩效果，如一块布被抽走
    FDTransitionTypeSuckEffect,
    // 立方体效果
    FDTransitionTypeCube,
    // 上下翻转效果
    FDTransitionTypeOglFlip,
    // 随机
    FDTransitionTypeRamdom,
};

/*
 *  动画方向
 */
typedef NS_ENUM(NSUInteger, FDTransitionSubtype) {
    FDTransitionSubtypeFromFromRight,// 从右
    FDTransitionSubtypeFromLeft,// 从左
    FDTransitionSubtypeFromTop,// 从上
    FDTransitionSubtypeFromBotoom,// 从下
    FDTransitionSubtypeFromRamdom// 随机
};

/*
 *  动画开始与结束快慢
 */
typedef NS_ENUM(NSUInteger, FDMediaTimingFunctionType) {
    // 默认
    FDMediaTimingFunctionTypeDefault,
    // 缓进
    FDMediaTimingFunctionTypeEaseIn,
    // 缓出
    FDMediaTimingFunctionTypeEaseOut,
    // 缓进缓出
    FDMediaTimingFunctionTypeEaseInEaseOut,
    // 线性
    FDMediaTimingFunctionTypeLinear,
    // 随机
    FDMediaTimingFunctionTypeRamdom,
};

@interface CALayer (FDTransition)


/**
*  转场动画
*
*  @param type                  转场动画类型
*  @param subType               转动动画方向
*  @param timingFunctionType    动画开始与结束快慢
*  @param duration              转动动画时长
*
*  @return 转场动画实例
*/
- (CATransition *)fd_addTransitionWithType:(FDTransitionType)type subType:(FDTransitionSubtype)subType timingFunctionType:(FDMediaTimingFunctionType)timingFunctionType duration:(CGFloat)duration;

@end
