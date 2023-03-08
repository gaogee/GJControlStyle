//
//  GJCollectionViewStyle.h
//  GJControlStyle
//
//  Created by gaogee on 2023/3/8.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJScrollViewStyle.h"

NS_ASSUME_NONNULL_BEGIN

@interface GJCollectionViewStyle : GJScrollViewStyle

@property (nonatomic, copy, readonly) GJViewStyle *(^delegate)(id <UICollectionViewDelegate> delegate);
@property (nonatomic, copy, readonly) GJViewStyle *(^dataSource)(id <UICollectionViewDataSource> dataSource);

@end

NS_ASSUME_NONNULL_END
