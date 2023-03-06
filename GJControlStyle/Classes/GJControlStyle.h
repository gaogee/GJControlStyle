//
//  UIView+GJControlStyle.h
//  GJControlStyle_Example
//
//  Created by gaogee on 2023/3/6.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GJViewStyle.h"
#import "GJLabelStyle.h"
#import "GJButtonStyle.h"
#import "GJImageViewStyle.h"
NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, UIButtonLayoutStyle) {
    UIButtonLayoutStyleLeftImageRightTitle,
    UIButtonLayoutStyleLeftTitleRightImage,
    UIButtonLayoutStyleTopImageBottomTitle,
    UIButtonLayoutStyleTopTitleBottomImage
};

@interface UIView (GJControlStyle)

- (void)gj_viewStyle:(void(^)(GJViewStyle *style))style;

- (void)gj_addTapBlock:(addViewGestureBlock)gestureBlock;

- (void)gj_addLongPressBlock:(addViewGestureBlock)gestureBlock;
@end

@interface UILabel (GJControlStyle)

- (void)gj_labelStyle:(void(^)(GJLabelStyle *style))style;

@end

@interface UIButton (GJControlStyle)

- (void)gj_buttonStyle:(void(^)(GJButtonStyle *style))style;

- (void)gj_addTargetWithControlEvent:(UIControlEvents)event block:(addTargetBlock)actionBlock;

- (void)gj_setLayoutStyle:(UIButtonLayoutStyle)style imageTitleSpace:(CGFloat)space;

@end

@interface UIImageView (GJControlStyle)

- (void)gj_imageViewStyle:(void(^)(GJImageViewStyle *style))style;

@end
NS_ASSUME_NONNULL_END
