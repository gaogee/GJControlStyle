# GJControlStyle

[![CI Status](https://img.shields.io/travis/gaogee/GJControlStyle.svg?style=flat)](https://travis-ci.org/gaogee/GJControlStyle)
[![Version](https://img.shields.io/cocoapods/v/GJControlStyle.svg?style=flat)](https://cocoapods.org/pods/GJControlStyle)
[![License](https://img.shields.io/cocoapods/l/GJControlStyle.svg?style=flat)](https://cocoapods.org/pods/GJControlStyle)
[![Platform](https://img.shields.io/cocoapods/p/GJControlStyle.svg?style=flat)](https://cocoapods.org/pods/GJControlStyle)

## Example

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
    

## Requirements

This library requires iOS 11.0+ and Xcode 9.0+.

## Installation

GJControlStyle is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'GJControlStyle'
```

## Author

gaogee, gaoju_os@163.com

## License

GJControlStyle is available under the MIT license. See the LICENSE file for more info.
