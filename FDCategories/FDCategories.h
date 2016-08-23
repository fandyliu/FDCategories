//
//  FDCategories.h
//  FDCategories
//
//  Created by QianTuFD on 16/8/19.
//  Copyright © 2016年 fandy. All rights reserved.
//

#import <UIKit/UIKit.h>




FOUNDATION_EXPORT double FDCategoriesVersionNumber;

FOUNDATION_EXPORT const unsigned char FDCategoriesVersionString[];



#if __has_include(<FDCategories/FDCategories.h>)
// UIKit
#import <FDCategories/UIView+FDAdd.h>
#import <FDCategories/UIView+FDScreenCapture.h>
#import <FDCategories/UIImage+FDAdd.h>
#import <FDCategories/UIImage+FDCircleImage.h>
#import <FDCategories/UIImage+FDBlurImage.h>
#import <FDCategories/UIImage+FDColorImage.h>
#import <FDCategories/UIImage+FDFrameImage.h>
#import <FDCategories/UIBarButtonItem+FDAdd.h>
#import <FDCategories/UITextField+FDPlaceholderColor.h>
//

// Foundation
#import <FDCategories/NSDate+FDAdd.h>
#import <FDCategories/NSDictionary+FDPropertyPrint.h>
#import <FDCategories/NSString+FDTextSize.h>
#import <FDCategories/NSString+FDHash.h>
//
#import <FDCategories/NSArray+FDAdd.h>


#else
// UIKit
#import "UIView+FDAdd.h"
#import "UIView+FDScreenCapture.h"

#import "UIImage+FDAdd.h"
#import "UIImage+FDCircleImage.h"
#import "UIImage+FDBlurImage.h"
#import "UIImage+FDColorImage.h"
#import "UIImage+FDFrameImage.h"

#import "UIBarButtonItem+FDAdd.h"

#import "UITextField+FDPlaceholderColor.h"

// Foundation
#import "NSDate+FDAdd.h"


#import "NSDictionary+FDPropertyPrint.h"

#import "NSString+FDTextSize.h"
#import "NSString+FDHash.h"
#import "NSArray+FDAdd.h"

#endif // FDCategories






