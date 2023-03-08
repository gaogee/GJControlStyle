//
//  GJTextFieldStyle.m
//  GJControlStyle
//
//  Created by gaogee on 2023/3/8.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJTextFieldStyle.h"

@implementation GJTextFieldStyle

-(GJViewStyle * _Nonnull (^)(NSString * _Nonnull))placeholder{
    return ^GJViewStyle *(NSString *pr){
        UITextField *tx = (UITextField *)self.view;
        tx.placeholder = pr;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(BOOL))secureTextEntry{
    return ^GJViewStyle *(BOOL sc){
        UITextField *tx = (UITextField *)self.view;
        tx.secureTextEntry = sc;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UIView * _Nonnull))leftView{
    return ^GJViewStyle *(UIView *lv){
        UITextField *tx = (UITextField *)self.view;
        tx.leftView = lv;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UIView * _Nonnull))rightView{
    return ^GJViewStyle *(UIView *rv){
        UITextField *tx = (UITextField *)self.view;
        tx.leftView = rv;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UITextFieldViewMode))leftViewMode{
    return ^GJViewStyle *(UITextFieldViewMode tm){
        UITextField *tx = (UITextField *)self.view;
        tx.leftViewMode = tm;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UITextFieldViewMode))rightViewMode{
    return ^GJViewStyle *(UITextFieldViewMode tm){
        UITextField *tx = (UITextField *)self.view;
        tx.leftViewMode = tm;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(NSString * _Nonnull))text{
    return ^GJViewStyle  *(NSString *text){
        UILabel *lb = (UILabel *)self.view ;
        lb.text = text;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(NSAttributedString * _Nonnull))attributedText{
    return ^GJViewStyle  *(NSAttributedString *aStr){
        UILabel *lb = (UILabel *)self.view ;
        lb.attributedText = aStr;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UIColor * _Nonnull))textColor{
    return ^GJViewStyle  *(UIColor *color){
        UILabel *lb = (UILabel *)self.view ;
        lb.textColor = color;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UIFont * _Nonnull))font{
    return ^GJViewStyle  *(UIFont *font){
        UILabel *lb = (UILabel *)self.view ;
        lb.font = font;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(NSTextAlignment))textAlignment{
    return ^GJViewStyle  *(NSTextAlignment textAlignment){
        UILabel *lb = (UILabel *)self.view ;
        lb.textAlignment = textAlignment;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(NSInteger))numberOfLines{
    return ^GJViewStyle  *(NSInteger numberOfLines){
        UILabel *lb = (UILabel *)self.view ;
        lb.numberOfLines = numberOfLines;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(NSLineBreakMode))lineBreakMode{
    return ^GJViewStyle  *(NSLineBreakMode lineBreakMode){
        UILabel *lb = (UILabel *)self.view ;
        lb.lineBreakMode = lineBreakMode;
        return self;
    };
}
@end
