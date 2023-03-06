//
//  GJButtonStyle.m
//  GJControlStyle_Example
//
//  Created by gaogee on 2023/3/6.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJButtonStyle.h"
#import "GJViewStyleCategory.h"
@implementation GJButtonStyle

-(GJViewStyle * _Nonnull (^)(NSString * _Nonnull, UIControlState))title{
    return ^GJViewStyle *(NSString *t,UIControlState cs){
        UIButton *bt = (UIButton *)self.view;
        [bt setTitle:t forState:cs];
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UIColor * _Nonnull, UIControlState))titleColor{
    return ^GJViewStyle *(UIColor *tc,UIControlState cs){
        UIButton *bt = (UIButton *)self.view;
        [bt setTitleColor:tc forState:cs];
        return self;
    };
}

- (GJViewStyle *(^)(id, SEL, UIControlEvents))addTarget
{
    return ^GJViewStyle *(id target,SEL action,UIControlEvents ce){
        UIButton *bt = (UIButton *)self.view;
        [bt addTarget:target action:action forControlEvents:ce];
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(addTargetBlock _Nonnull, UIControlEvents))addTargetBlock{
    return ^GJViewStyle *(addTargetBlock ab, UIControlEvents ce){
        if (ab) {
            UIButton *bt = (UIButton *)self.view;
            [bt gj_addTargetWithControlEvent:ce block:ab];
        }
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UIImage * _Nonnull, UIControlState))image{
    return ^GJViewStyle *(UIImage *img, UIControlState ce){
        UIButton *bt = (UIButton *)self.view;
        [bt setImage:img forState:ce];
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(NSString * _Nonnull, UIControlState))imageName{
    return ^GJViewStyle *(NSString *nm, UIControlState ce){
        UIButton *bt = (UIButton *)self.view;
        [bt setImage:[UIImage imageNamed:nm] forState:ce];
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UIImage * _Nonnull, UIControlState))backgroundImage{
    return ^GJViewStyle *(UIImage *bImg, UIControlState ce){
        UIButton *bt = (UIButton *)self.view;
        [bt setBackgroundImage:bImg forState:ce];
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(NSString * _Nonnull, UIControlState))backgroundImageName{
    return ^GJViewStyle *(NSString *bnm, UIControlState ce){
        UIButton *bt = (UIButton *)self.view;
        [bt setBackgroundImage:[UIImage imageNamed:bnm] forState:ce];
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(NSAttributedString * _Nonnull, UIControlState))attributedString{
    return ^GJViewStyle *(NSAttributedString *as,UIControlState s){
        UIButton *bt = (UIButton *)self.view;
        [bt setAttributedTitle:as forState:s];
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UIFont * _Nonnull, UIColor * _Nonnull, NSString * _Nonnull, UIControlState))attributedFontColorTitle{
    return ^GJViewStyle *(UIFont *f,UIColor *c,NSString *t,UIControlState cs){
        UIButton *bt = (UIButton *)self.view;
        NSAssert(t.length > 0, @"GJViewStyler提示：title为空时，无法设置对应的attributedStr");
        NSMutableDictionary<NSAttributedStringKey, id> *attributes = [NSMutableDictionary dictionary];
        if (f) {
            [attributes setValue:f forKey:NSFontAttributeName];
        }
        if (c) {
            [attributes setValue:c forKey:NSForegroundColorAttributeName];
        }
        NSMutableAttributedString *titleAttributedStr = [[NSMutableAttributedString alloc]initWithString:t attributes:attributes];
        [bt setAttributedTitle:titleAttributedStr forState:cs];
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(CGFloat, CGFloat, CGFloat, CGFloat))setContentEdgeInsets{
    return ^GJViewStyle *(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right){
        UIButton *bt = (UIButton *)self.view;
        [bt setContentEdgeInsets:UIEdgeInsetsMake(top, left, bottom, right)];
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(CGFloat, CGFloat, CGFloat, CGFloat))setImageEdgeInsets{
    return ^GJViewStyle *(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right){
        UIButton *bt = (UIButton *)self.view;
        [bt setImageEdgeInsets:UIEdgeInsetsMake(top, left, bottom, right)];
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(CGFloat, CGFloat, CGFloat, CGFloat))setTitleEdgeInsets{
    return ^GJViewStyle *(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right){
        UIButton *bt = (UIButton *)self.view;
        [bt setTitleEdgeInsets:UIEdgeInsetsMake(top, left, bottom, right)];
        return self;
    };
}

@end
