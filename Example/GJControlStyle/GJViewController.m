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
    [lab gj_style:^(GJLabelStyle * _Nonnull style) {
        style.frame(CGRectMake(100, 100, 100, 100));
        style.backgroundColor([UIColor redColor]);
        style.text(@"lab");
        style.textAlignment(NSTextAlignmentCenter);
        style.addtoSupview(self.view);
    }];
    lab.style.text(@"label");
    
    UIButton *btn = [[UIButton alloc]init];
    [self.view addSubview:btn];
    [btn gj_style:^(GJButtonStyle * _Nonnull style) {
        style.frame(CGRectMake(220, 100, 100, 100));
        style.title(@"btn", UIControlStateNormal);
        style.backgroundColor([UIColor blueColor]);
    }];
    
    

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
