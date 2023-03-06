//
//  GJViewController.m
//  GJControlStyle
//
//  Created by gaogee on 03/03/2023.
//  Copyright (c) 2023 gaogee. All rights reserved.
//

#import "GJViewController.h"
#import "GJControlStyle.h"
@interface GJViewController ()

@end

@implementation GJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UILabel *lab = [[UILabel alloc]init];
    [self.view addSubview:lab];
    [lab gj_labelStyle:^(GJLabelStyle * _Nonnull style) {
        style.frame(CGRectMake(0, 0, 100, 100));
        style.backgroundColor([UIColor redColor]);
        style.text(@"sdjasjdk");
    }];
    UIButton *btn = [[UIButton alloc]init];
    [btn gj_buttonStyle:^(GJButtonStyle * _Nonnull style) {
        style.frame(CGRectMake(100, 100, 100, 100));
        style.title(@"333", UIControlStateNormal);
        style.backgroundColor([UIColor blueColor]);
    }];
    [self.view addSubview:btn];
    

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
