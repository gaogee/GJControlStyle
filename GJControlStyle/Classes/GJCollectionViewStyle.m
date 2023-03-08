//
//  GJCollectionViewStyle.m
//  GJControlStyle
//
//  Created by gaogee on 2023/3/8.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJCollectionViewStyle.h"

@implementation GJCollectionViewStyle
@dynamic delegate;
-(GJViewStyle * _Nonnull (^)(id<UICollectionViewDelegate> _Nonnull))delegate{
    return ^GJViewStyle *(id<UICollectionViewDelegate> dg){
        UICollectionView *cv = (UICollectionView *)self.view;
        cv.delegate = dg;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(id<UICollectionViewDataSource> _Nonnull))dataSource{
    return ^GJViewStyle *(id<UICollectionViewDataSource> ds){
        UICollectionView *cv = (UICollectionView *)self.view;
        cv.dataSource = ds;
        return self;
    };
}
@end
