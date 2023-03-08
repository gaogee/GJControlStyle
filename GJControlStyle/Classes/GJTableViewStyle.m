//
//  GJTableViewStyle.m
//  GJControlStyle
//
//  Created by gaogee on 2023/3/8.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJTableViewStyle.h"

@implementation GJTableViewStyle
@dynamic delegate;
-(GJViewStyle * _Nonnull (^)(UIView * _Nonnull))tableHeaderView{
    return ^GJViewStyle *(UIView *sv){
        UITableView *tv = (UITableView *)self.view;
        tv.tableHeaderView = sv;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UIView * _Nonnull))tableFooterView{
    return ^GJViewStyle *(UIView *sv){
        UITableView *tv = (UITableView *)self.view;
        tv.tableHeaderView = sv;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(UITableViewCellSeparatorStyle))separatorStyle{
    return ^GJViewStyle *(UITableViewCellSeparatorStyle st){
        UITableView *tv = (UITableView *)self.view;
        tv.separatorStyle = st;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(id<UITableViewDelegate> _Nonnull))delegate{
    return ^GJViewStyle *(id<UITableViewDelegate> dg){
        UITableView *tv = (UITableView *)self.view;
        tv.delegate = dg;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(id<UITableViewDataSource> _Nonnull))dataSource{
    return ^GJViewStyle *(id<UITableViewDataSource> ds){
        UITableView *tv = (UITableView *)self.view;
        tv.dataSource = ds;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(CGFloat))rowHeight{
    return ^GJViewStyle *(CGFloat h){
        UITableView *tv = (UITableView *)self.view;
        tv.rowHeight = h;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(CGFloat))sectionHeaderHeight{
    return ^GJViewStyle *(CGFloat h){
        UITableView *tv = (UITableView *)self.view;
        tv.sectionHeaderHeight = h;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(CGFloat))sectionFooterHeight{
    return ^GJViewStyle *(CGFloat h){
        UITableView *tv = (UITableView *)self.view;
        tv.sectionFooterHeight = h;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(CGFloat))estimatedRowHeight{
    return ^GJViewStyle *(CGFloat h){
        UITableView *tv = (UITableView *)self.view;
        tv.estimatedRowHeight = h;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(CGFloat))estimatedSectionHeaderHeight{
    return ^GJViewStyle *(CGFloat h){
        UITableView *tv = (UITableView *)self.view;
        tv.estimatedSectionHeaderHeight = h;
        return self;
    };
}

-(GJViewStyle * _Nonnull (^)(CGFloat))estimatedSectionFooterHeight{
    return ^GJViewStyle *(CGFloat h){
        UITableView *tv = (UITableView *)self.view;
        tv.estimatedSectionFooterHeight = h;
        return self;
    };
}
@end
