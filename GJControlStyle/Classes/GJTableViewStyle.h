//
//  GJTableViewStyle.h
//  GJControlStyle
//
//  Created by zhanggaoju on 2023/3/8.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJScrollViewStyle.h"

NS_ASSUME_NONNULL_BEGIN

@interface GJTableViewStyle : GJScrollViewStyle

@property (nonatomic, copy, readonly) GJViewStyle *(^tableHeaderView)(UIView *tableHeaderView);
@property (nonatomic, copy, readonly) GJViewStyle *(^tableFooterView)(UIView *tableFooterView);

@property (nonatomic, copy, readonly) GJViewStyle *(^separatorStyle)(UITableViewCellSeparatorStyle separatorStyle);

@property (nonatomic, copy, readonly) GJViewStyle *(^delegate)(id <UITableViewDelegate> delegate);
@property (nonatomic, copy, readonly) GJViewStyle *(^dataSource)(id <UITableViewDataSource> dataSource);


@property (nonatomic, copy, readonly) GJViewStyle *(^rowHeight)(CGFloat rowHeight);
@property (nonatomic, copy, readonly) GJViewStyle *(^sectionHeaderHeight)(CGFloat sectionHeaderHeight);
@property (nonatomic, copy, readonly) GJViewStyle *(^sectionFooterHeight)(CGFloat sectionFooterHeight);
@property (nonatomic, copy, readonly) GJViewStyle *(^estimatedRowHeight)(CGFloat estimatedRowHeight);
@property (nonatomic, copy, readonly) GJViewStyle *(^estimatedSectionHeaderHeight)(CGFloat estimatedSectionHeaderHeight);
@property (nonatomic, copy, readonly) GJViewStyle *(^estimatedSectionFooterHeight)(CGFloat estimatedSectionFooterHeight);

@end

NS_ASSUME_NONNULL_END
