//
//  GJScrollViewStyle.m
//  GJControlStyle
//
//  Created by zhanggaoju on 2023/3/8.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJScrollViewStyle.h"

@implementation GJScrollViewStyle
-(GJViewStyle * _Nonnull (^)(CGFloat, CGFloat))contentSize{
    return ^GJViewStyle *(CGFloat w, CGFloat h){
        UIScrollView *sv = (UIScrollView *)self.view;
        sv.contentSize = CGSizeMake(w, h);
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(CGFloat, CGFloat, BOOL))contentOffset{
    return ^GJViewStyle *(CGFloat x, CGFloat y, BOOL a){
        UIScrollView *sv = (UIScrollView *)self.view;
        [sv setContentOffset:CGPointMake(x, y) animated:a];
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(CGFloat, CGFloat, CGFloat, CGFloat))contentInset{
    return ^GJViewStyle *(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right){
        UIScrollView *sv = (UIScrollView *)self.view;
        sv.contentInset = UIEdgeInsetsMake(top, left, bottom, right);
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(BOOL))pagingEnabled{
    return ^GJViewStyle *(BOOL pn){
        UIScrollView *sv = (UIScrollView *)self.view;
        sv.pagingEnabled = pn;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(BOOL))scrollEnabled{
    return ^GJViewStyle *(BOOL en){
        UIScrollView *sv = (UIScrollView *)self.view;
        sv.scrollEnabled = en;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(BOOL))bounces{
    return ^GJViewStyle *(BOOL bs){
        UIScrollView *sv = (UIScrollView *)self.view;
        sv.bounces = bs;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(BOOL))showsVerticalScrollIndicator{
    return ^GJViewStyle *(BOOL s){
        UIScrollView *sv = (UIScrollView *)self.view;
        sv.showsVerticalScrollIndicator = s;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(BOOL))showsHorizontalScrollIndicator{
    return ^GJViewStyle *(BOOL s){
        UIScrollView *sv = (UIScrollView *)self.view;
        sv.showsHorizontalScrollIndicator = s;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(BOOL))alwaysBounceVertical{
    return ^GJViewStyle *(BOOL s){
        UIScrollView *sv = (UIScrollView *)self.view;
        sv.alwaysBounceVertical = s;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(BOOL))alwaysBounceHorizontal{
    return ^GJViewStyle *(BOOL s){
        UIScrollView *sv = (UIScrollView *)self.view;
        sv.alwaysBounceHorizontal = s;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(id<UIScrollViewDelegate> _Nonnull))delegate{
    return ^GJViewStyle *(id<UIScrollViewDelegate> dg){
        UIScrollView *sv = (UIScrollView *)self.view;
        sv.delegate = dg;
        return self;
    };
}
@end
