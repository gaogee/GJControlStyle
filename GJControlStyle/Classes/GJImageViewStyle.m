//
//  GJImageViewStyle.m
//  GJControlStyle_Example
//
//  Created by gaogee on 2023/3/6.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJImageViewStyle.h"

@implementation GJImageViewStyle

-(GJViewStyle * _Nonnull (^)(UIImage * _Nonnull))image{
    return ^GJImageViewStyle *(UIImage *image){
        UIImageView *iv = (UIImageView *)self.view;
        iv.image = image;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(NSString * _Nonnull))imageName{
    return ^GJImageViewStyle *(NSString *ie){
        UIImageView *iv = (UIImageView *)self.view;
        iv.image = [UIImage imageNamed:ie];
        return self;
    };
}
@end
