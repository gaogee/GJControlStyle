//
//  GJViewStyle.h
//  GJViewStyle_Example
//
//  Created by gaogee on 2023/3/6.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "GJControlStyle.h"
typedef void(^addViewGestureBlock)(void);
NS_ASSUME_NONNULL_BEGIN

@interface GJViewStyle : NSObject

@property(nonatomic,strong) UIView *view;

- (id)gj_style:(void(^)(GJViewStyle *style))style;

@property (nonatomic, copy, readonly) GJViewStyle *(^frame)(CGRect frame);
@property (nonatomic, copy, readonly) GJViewStyle *(^backgroundColor)(UIColor *backgroundColor);
@property (nonatomic, copy, readonly) GJViewStyle  *(^hidden)(BOOL hidden);
@property (nonatomic, copy, readonly) GJViewStyle  *(^tag)(NSInteger tag);
@property (nonatomic, copy, readonly) GJViewStyle  *(^userInteractionEnabled)(BOOL userInteractionEnabled);
@property (nonatomic, copy, readonly) GJViewStyle  *(^contentMode)(UIViewContentMode contentMode);

@property (nonatomic, copy, readonly) GJViewStyle  *(^cornerRadius)(CGFloat cornerRadius);
@property (nonatomic, copy, readonly) GJViewStyle  *(^borderWidth)(CGFloat borderWidth);
@property (nonatomic, copy, readonly) GJViewStyle  *(^borderColor)(UIColor *borderColor);
@property (nonatomic, copy, readonly) GJViewStyle  *(^clipsToBounds)(BOOL clipsToBounds);
@property (nonatomic, copy, readonly) GJViewStyle  *(^cornerShadow)(UIColor * _Nullable shadowColor,CGSize shadowOffset,float shadowOpacity,CGFloat shadowRadius);

@property (nonatomic, copy, readonly) GJViewStyle  *(^tapBlock)(addViewGestureBlock tapGestureBlcok);
@property (nonatomic, copy, readonly) GJViewStyle  *(^longPressBlock)(addViewGestureBlock longPressGestureBlock);

@end

NS_ASSUME_NONNULL_END
