//
//  GJButtonStyle.h
//  GJControlStyle_Example
//
//  Created by gaogee on 2023/3/6.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJViewStyle.h"
typedef void(^addTargetBlock)(void);
NS_ASSUME_NONNULL_BEGIN

@interface GJButtonStyle : GJViewStyle

@property (nonatomic, copy, readonly) GJViewStyle *(^title)(NSString *title,UIControlState state);
@property (nonatomic, copy, readonly) GJViewStyle *(^titleColor)(UIColor *titleColor,UIControlState state);
@property (nonatomic, copy, readonly) GJViewStyle *(^addTarget)(id target,SEL action,UIControlEvents event);
@property (nonatomic, copy, readonly) GJViewStyle *(^addTargetBlock)(addTargetBlock targetBlock,UIControlEvents event);

@property (nonatomic, copy, readonly) GJViewStyle *(^image)(UIImage *image,UIControlState state);
@property (nonatomic, copy, readonly) GJViewStyle *(^imageName)(NSString *imageName,UIControlState state);
@property (nonatomic, copy, readonly) GJViewStyle *(^backgroundImage)(UIImage *backgroundImage,UIControlState state);
@property (nonatomic, copy, readonly) GJViewStyle *(^backgroundImageName)(NSString *backgroundImageName,UIControlState state);

@property (nonatomic, copy, readonly) GJViewStyle *(^selected)(BOOL *selected);

@property (nonatomic, copy, readonly) GJViewStyle  *(^imageViewContentMode)(UIViewContentMode contentMode);
@property (nonatomic, copy, readonly) GJViewStyle *(^titleLabelContentMode)(UIViewContentMode contentMode);
@property (nonatomic, copy, readonly) GJViewStyle *(^font)(UIFont *font);

@property (nonatomic, copy, readonly) GJViewStyle *(^attributedString)(NSAttributedString *attributedString,UIControlState state);
@property (nonatomic, copy, readonly) GJViewStyle *(^attributedFontColorTitle)(UIFont *titleFont,UIColor *titleColor,NSString *title,UIControlState state);

@property (nonatomic, copy, readonly) GJViewStyle *(^setContentEdgeInsets)(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right);
@property (nonatomic, copy, readonly) GJViewStyle *(^setImageEdgeInsets)(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right);
@property (nonatomic, copy, readonly) GJViewStyle *(^setTitleEdgeInsets)(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right);

@end

NS_ASSUME_NONNULL_END
