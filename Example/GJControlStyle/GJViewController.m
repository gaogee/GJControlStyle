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
    
    //Label Example 1:
    
    UILabel *lab1 = [[UILabel alloc]init];
    [lab1 gj_style:^(GJLabelStyle * _Nonnull style) {
        style.frame(CGRectMake(10, 100, 100, 30));
        style.backgroundColor(UIColor.redColor);
        style.textColor(UIColor.whiteColor);
        style.text(@"lab1");
        style.textAlignment(NSTextAlignmentCenter);
        style.addtoSupview(self.view);
    }];
    
    //Label Example 2:
    
    UILabel *lab2 = [[UILabel alloc]init];
    lab2.gj_style.frame(CGRectMake(150, 100, 100, 30));
    lab2.gj_style.backgroundColor(UIColor.redColor);
    lab2.gj_style.textColor(UIColor.whiteColor);
    lab2.gj_style.text(@"lab2");
    lab2.gj_style.textAlignment(NSTextAlignmentCenter);
    lab2.gj_style.addtoSupview(self.view);
    lab2.gj_style.tapBlock(^(UIView * _Nullable view) {
        NSLog(@"Click label2");
    });
    
    //Button Example 1:
    
    UIButton *btn1 = [[UIButton alloc]init];
    [btn1 gj_style:^(GJButtonStyle * _Nonnull style) {
        style.frame(CGRectMake(10, 150, 100, 30));
        style.title(@"btn1", UIControlStateNormal);
        style.backgroundColor([UIColor blueColor]);
    }];
    [self.view addSubview:btn1];
    
    //Button Example 2:
    
    UIButton *btn2 = [[UIButton alloc]init];
    btn2.gj_style.frame(CGRectMake(150, 150, 100, 30));
    btn2.gj_style.title(@"btn2", UIControlStateNormal);
    btn2.gj_style.backgroundColor([UIColor blueColor]);
    btn2.gj_style.addtoSupview(self.view);
    
    //You can also create imageView, textFiled, tableView…
    
    

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
