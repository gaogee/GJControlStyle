//
//  GJViewStyle.m
//  GJViewStyle_Example
//
//  Created by gaogee on 2023/3/6.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJViewStyle.h"
#import "GJControlStyle.h"
@implementation GJViewStyle

-(id)gj_style:(void (^)(GJViewStyle * _Nonnull))style{
    GJViewStyle *s = self;
    if (!s) {
        return nil;
    }
    if (style) {
        style(s);
    }
    return self.view;
}

-(GJViewStyle * _Nonnull (^)(CGRect))frame{
    return ^GJViewStyle *(CGRect frame){
        self.view.frame = frame;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UIColor * _Nonnull))backgroundColor{
    return ^GJViewStyle *(UIColor *backgroundColor){
        self.view.backgroundColor = backgroundColor;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(BOOL))hidden{
    return ^GJViewStyle  *(BOOL isHidden){
        self.view .hidden = isHidden;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(NSInteger))tag{
    return ^GJViewStyle  *(NSInteger t){
        self.view .tag = t;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(BOOL))userInteractionEnabled{
    return ^GJViewStyle  *(BOOL userIE){
        self.view .userInteractionEnabled = userIE;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UIViewContentMode))contentMode{
    return ^GJViewStyle  *(UIViewContentMode cm){
        self.view .contentMode = cm;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(CGFloat))cornerRadius{
    return ^GJViewStyle  *(CGFloat cr){
        self.view .layer.cornerRadius = cr;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(CGFloat))borderWidth{
    return ^GJViewStyle  *(CGFloat bw){
        self.view .layer.borderWidth = bw;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UIColor * _Nonnull))borderColor{
    return ^GJViewStyle  *(UIColor *bc){
        self.view .layer.borderColor = bc.CGColor;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(BOOL))clipsToBounds{
    return ^GJViewStyle  *(BOOL cb){
        self.view .clipsToBounds = cb;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UIColor * _Nullable, CGSize, float, CGFloat))cornerShadow{
    return ^GJViewStyle  *(UIColor * _Nullable color,CGSize offset,float opacity,CGFloat radius){
        self.view.layer.shadowColor = color.CGColor;
        self.view.layer.shadowOffset = offset;
        self.view.layer.shadowOpacity = opacity;
        self.view.layer.shadowRadius = radius;
        self.view.layer.masksToBounds = NO;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(addViewGestureBlock _Nonnull))tapBlock{
    return ^GJViewStyle  *(addViewGestureBlock mb){
        if (mb) {
            [self.view gj_addTapBlock:mb];
        }
        return self;
    };
}

- (GJViewStyle * _Nonnull (^)(addViewGestureBlock _Nonnull))longPressBlock{
    return ^GJViewStyle  *(addViewGestureBlock mb){
        if (mb) {
            [self.view gj_addLongPressBlock:mb];
        }
        return self;
    };
}

@end

