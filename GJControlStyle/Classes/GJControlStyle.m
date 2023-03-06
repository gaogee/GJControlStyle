//
//  UIView+GJControlStyle.m
//  GJControlStyle_Example
//
//  Created by gaogee on 2023/3/6.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJControlStyle.h"
#import <objc/runtime.h>
@implementation UIView (GJControlStyle)

- (void)gj_viewStyle:(void(^)(GJViewStyle *style))style{
    GJViewStyle *s = [[GJViewStyle alloc]init];
    s.view = self;
    if (style) {
        style(s);
    }
}

- (void)gj_addTapBlock:(addViewGestureBlock)gestureBlock{
    self.userInteractionEnabled = YES;
    SEL sel = @selector(handleActionForTapGesture:);
    UITapGestureRecognizer *gesture = objc_getAssociatedObject(self, sel);
    if (!gesture){
        gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel];
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, sel, gesture, OBJC_ASSOCIATION_RETAIN);
    }
    objc_setAssociatedObject(self, sel, gestureBlock, OBJC_ASSOCIATION_COPY);
}

- (void)handleActionForTapGesture:(UITapGestureRecognizer*)gesture
{
    if (gesture.state == UIGestureRecognizerStateRecognized){
        addViewGestureBlock gestureBlock = objc_getAssociatedObject(self, _cmd);
        if (gestureBlock){
            gestureBlock();
        }
    }
}

- (void)gj_addLongPressBlock:(addViewGestureBlock)gestureBlock{
    self.userInteractionEnabled = YES;
    SEL sel = @selector(handleActionForLongPressGesture:);
    UILongPressGestureRecognizer *gesture = objc_getAssociatedObject(self, sel);
    if (!gesture){
        gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel];
        gesture.cancelsTouchesInView = NO;
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, sel, gesture, OBJC_ASSOCIATION_RETAIN);
    }
    objc_setAssociatedObject(self, sel, gestureBlock, OBJC_ASSOCIATION_COPY);
}

- (void)handleActionForLongPressGesture:(UITapGestureRecognizer*)gesture{
    if (gesture.state == UIGestureRecognizerStateRecognized){
        addViewGestureBlock gestureBlock = objc_getAssociatedObject(self, _cmd);
        if (gestureBlock){
            gestureBlock();
        }
    }
}
@end

@implementation UILabel (GJControlStyle)

- (void)gj_labelStyle:(void(^)(GJLabelStyle *style))style{
    GJLabelStyle *s = [[GJLabelStyle alloc]init];
    s.view = self;
    if (style) {
        style(s);
    }
}
@end

@implementation UIButton (GJControlStyle)

- (void)gj_buttonStyle:(void(^)(GJButtonStyle *style))style{
    GJButtonStyle *s = [[GJButtonStyle alloc]init];
    s.view = self;
    if (style) {
        style(s);
    }
}

-(void)gj_addTargetWithControlEvent:(UIControlEvents)event block:(addTargetBlock)actionBlock{
    objc_setAssociatedObject(self, @selector(clickAction:), actionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(clickAction:) forControlEvents:event];
}

- (void)clickAction:(UIButton *)button{
    addTargetBlock actionBlock =objc_getAssociatedObject(self, _cmd);
    if (actionBlock) {
        actionBlock();
    }
}

-(void)gj_setLayoutStyle:(UIButtonLayoutStyle)style imageTitleSpace:(CGFloat)space{
    if (@available(iOS 15.0, *)) {
        UIButtonConfiguration *config = [UIButtonConfiguration plainButtonConfiguration];
        switch (style) {
            case UIButtonLayoutStyleLeftImageRightTitle:
                config.imagePlacement = NSDirectionalRectEdgeLeading;
                break;
                
            case UIButtonLayoutStyleLeftTitleRightImage:
                config.imagePlacement = NSDirectionalRectEdgeTrailing;
                break;
                
            case UIButtonLayoutStyleTopImageBottomTitle:
                config.imagePlacement = NSDirectionalRectEdgeTop;
                break;
                
            case UIButtonLayoutStyleTopTitleBottomImage:
                config.imagePlacement = NSDirectionalRectEdgeBottom;
                break;
                
            default:
                config.imagePlacement = NSDirectionalRectEdgeAll;
                break;
        }
        config.imagePadding = space;
        self.configuration = config;
    } else {
        CGFloat imageWith = self.imageView.frame.size.width;
        CGFloat imageHeight = self.imageView.frame.size.height;
        
        CGFloat labelWidth = 0.0;
        CGFloat labelHeight = 0.0;
        if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0) {
            labelWidth = self.titleLabel.intrinsicContentSize.width;
            labelHeight = self.titleLabel.intrinsicContentSize.height;
        } else {
            labelWidth = self.titleLabel.frame.size.width;
            labelHeight = self.titleLabel.frame.size.height;
        }
        
        UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
        UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;
        
        switch (style) {
            case UIButtonLayoutStyleTopImageBottomTitle:
            {
                imageEdgeInsets = UIEdgeInsetsMake(-labelHeight-space/2.0, 0, 0, -labelWidth);
                labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight-space/2.0, 0);
            }
                break;
            case UIButtonLayoutStyleLeftImageRightTitle:
            {
                imageEdgeInsets = UIEdgeInsetsMake(0, -space/2.0, 0, space/2.0);
                labelEdgeInsets = UIEdgeInsetsMake(0, space/2.0, 0, -space/2.0);
            }
                break;
            case UIButtonLayoutStyleTopTitleBottomImage:
            {
                imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight-space/2.0, -labelWidth);
                labelEdgeInsets = UIEdgeInsetsMake(-imageHeight-space/2.0, -imageWith, 0, 0);
            }
                break;
            case UIButtonLayoutStyleLeftTitleRightImage:
            {
                imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+space/2.0, 0, -labelWidth-space/2.0);
                labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith-space/2.0, 0, imageWith+space/2.0);
            }
                break;
            default:
                break;
        }
        self.titleEdgeInsets = labelEdgeInsets;
        self.imageEdgeInsets = imageEdgeInsets;
    }
}

@end

@implementation UIImageView (GJControlStyle)

- (void)gj_imageViewStyle:(void(^)(GJImageViewStyle *style))style{
    GJImageViewStyle *s = [[GJImageViewStyle alloc]init];
    s.view = self;
    if (style) {
        style(s);
    }
}

@end
