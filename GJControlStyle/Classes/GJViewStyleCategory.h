//
//  GJViewStyleCategory.h
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
#import "GJTextFieldStyle.h"
NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, UIButtonLayoutStyle) {
    UIButtonLayoutStyleLeftImageRightTitle,
    UIButtonLayoutStyleLeftTitleRightImage,
    UIButtonLayoutStyleTopImageBottomTitle,
    UIButtonLayoutStyleTopTitleBottomImage
};

@interface UIView (GJControlStyle)

@property (nonatomic, strong, readonly) GJViewStyle *style;

- (void)gj_style:(void(^)(GJViewStyle *style))style;

- (void)gj_addTapBlock:(addViewGestureBlock)gestureBlock;

- (void)gj_addLongPressBlock:(addViewGestureBlock)gestureBlock;
@end

@interface UILabel (GJControlStyle)

@property (nonatomic, strong, readonly) GJLabelStyle *style;

- (void)gj_style:(void(^)(GJLabelStyle *style))style;

@end

@interface UIButton (GJControlStyle)

@property (nonatomic, strong, readonly) GJButtonStyle *style;

- (void)gj_style:(void(^)(GJButtonStyle *style))style;

- (void)gj_addTargetWithControlEvent:(UIControlEvents)event block:(addTargetBlock)actionBlock;

- (void)gj_setLayoutStyle:(UIButtonLayoutStyle)style imageTitleSpace:(CGFloat)space;

@end

@interface UIImageView (GJControlStyle)

@property (nonatomic, strong, readonly) GJImageViewStyle *style;

- (void)gj_style:(void(^)(GJImageViewStyle *style))style;

@end

@interface UITextField (GJControlStyle)

@property (nonatomic, strong, readonly) GJTextFieldStyle *style;

- (void)gj_style:(void(^)(GJTextFieldStyle *style))style;

@end
NS_ASSUME_NONNULL_END
