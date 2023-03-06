//
//  GJImageViewStyle.h
//  GJControlStyle_Example
//
//  Created by gaogee on 2023/3/6.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJViewStyle.h"

NS_ASSUME_NONNULL_BEGIN

@interface GJImageViewStyle : GJViewStyle
@property (nonatomic, copy, readonly) GJViewStyle *(^image)(UIImage *image);
@property (nonatomic, copy, readonly) GJViewStyle *(^imageName)(NSString *imageName);
@end

NS_ASSUME_NONNULL_END
