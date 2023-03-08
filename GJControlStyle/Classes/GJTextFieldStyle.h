//
//  GJTextFieldStyle.h
//  GJControlStyle
//
//  Created by gaogee on 2023/3/8.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJViewStyle.h"

NS_ASSUME_NONNULL_BEGIN

@interface GJTextFieldStyle : GJViewStyle
@property (nonatomic, copy, readonly) GJViewStyle *(^placeholder)(NSString *placeholder);
@property (nonatomic, copy, readonly) GJViewStyle *(^secureTextEntry)(BOOL secureTextEntry);
@property (nonatomic, copy, readonly) GJViewStyle *(^leftView)(UIView *leftView);
@property (nonatomic, copy, readonly) GJViewStyle *(^rightView)(UIView *rightView);
@property (nonatomic, copy, readonly) GJViewStyle *(^leftViewMode)(UITextFieldViewMode model);
@property (nonatomic, copy, readonly) GJViewStyle *(^rightViewMode)(UITextFieldViewMode model);

@property (nonatomic, copy, readonly) GJViewStyle  *(^text)(NSString *text);
@property (nonatomic, copy, readonly) GJViewStyle  *(^attributedText)(NSAttributedString *attributedText);
@property (nonatomic, copy, readonly) GJViewStyle  *(^textColor)(UIColor *textColor);
@property (nonatomic, copy, readonly) GJViewStyle  *(^font)(UIFont *font);
@property (nonatomic, copy, readonly) GJViewStyle  *(^textAlignment)(NSTextAlignment textAlignment);
@property (nonatomic, copy, readonly) GJViewStyle  *(^numberOfLines)(NSInteger numberOfLines);
@property (nonatomic, copy, readonly) GJViewStyle  *(^lineBreakMode)(NSLineBreakMode lineBreakMode);
@end

NS_ASSUME_NONNULL_END
