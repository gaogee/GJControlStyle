//
//  GJLabelStyle.m
//  GJViewStyle_Example
//
//  Created by gaogee on 2023/3/6.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJLabelStyle.h"

@implementation GJLabelStyle

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
