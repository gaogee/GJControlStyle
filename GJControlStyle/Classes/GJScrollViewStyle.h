//
//  GJScrollViewStyle.h
//  GJControlStyle
//
//  Created by zhanggaoju on 2023/3/8.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJViewStyle.h"

NS_ASSUME_NONNULL_BEGIN

@interface GJScrollViewStyle : GJViewStyle

@property (nonatomic, copy, readonly) GJViewStyle *(^contentSize)(CGFloat width, CGFloat height);
@property (nonatomic, copy, readonly) GJViewStyle *(^contentOffset)(CGFloat x, CGFloat y);
@property (nonatomic, copy, readonly) GJViewStyle *(^contentInset)(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right);

@property (nonatomic, copy, readonly) GJViewStyle *(^pagingEnabled)(BOOL pagingEnabled);
@property (nonatomic, copy, readonly) GJViewStyle *(^scrollEnabled)(BOOL scrollEnabled);
@property (nonatomic, copy, readonly) GJViewStyle *(^bounces)(BOOL bounces);


@property (nonatomic, copy, readonly) GJViewStyle *(^showsVerticalScrollIndicator)(BOOL showsVerticalScrollIndicator);
@property (nonatomic, copy, readonly) GJViewStyle *(^showsHorizontalScrollIndicator)(BOOL showsHorizontalScrollIndicator);
@property (nonatomic, copy, readonly) GJViewStyle *(^alwaysBounceVertical)(BOOL alwaysBounceVertical);
@property (nonatomic, copy, readonly) GJViewStyle *(^alwaysBounceHorizontal)(BOOL alwaysBounceHorizontal);

@property (nonatomic, copy, readonly) GJViewStyle *(^delegate)(id <UIScrollViewDelegate> delegate);

@end


NS_ASSUME_NONNULL_END
