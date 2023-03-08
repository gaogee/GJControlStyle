//
//  GJViewStyleCategory.m
//  GJControlStyle_Example
//
//  Created by gaogee on 2023/3/6.
//  Copyright © 2023 gaogee. All rights reserved.
//

#import "GJViewStyleCategory.h"
#import <objc/runtime.h>
@implementation UIView (GJControlStyle)
@dynamic gj_style;
static char  * view_styleKey ="view_styleKey";

-(void)setGj_style:(GJViewStyle * _Nonnull)gj_style{
    objc_setAssociatedObject(self, view_styleKey, gj_style, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(GJViewStyle * _Nonnull)gj_style{
    objc_getAssociatedObject(self, view_styleKey);
    GJViewStyle *s = [[GJViewStyle alloc]init];
    s.view = self;
    return s;
}

- (void)gj_style:(void(^)(GJViewStyle *style))style{
    GJViewStyle *s = self.gj_style;
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
            gestureBlock(self);
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
            gestureBlock(self);
        }
    }
}
@end

@implementation UILabel (GJControlStyle)
@dynamic gj_style;
static char  * label_styleKey ="label_styleKey";

-(void)setGj_style:(GJLabelStyle * _Nonnull)gj_style{
    objc_setAssociatedObject(self, label_styleKey, gj_style, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(GJLabelStyle * _Nonnull)gj_style{
    objc_getAssociatedObject(self, label_styleKey);
    GJLabelStyle *s = [[GJLabelStyle alloc]init];
    s.view = self;
    return s;
}

- (void)gj_style:(void(^)(GJLabelStyle *style))style{
    GJLabelStyle *s = self.gj_style;
    s.view = self;
    if (style) {
        style(s);
    }
}
@end

@implementation UIButton (GJControlStyle)
@dynamic gj_style;
static char  * button_styleKey ="button_styleKey";

-(void)setGj_style:(GJButtonStyle * _Nonnull)gj_style{
    objc_setAssociatedObject(self, button_styleKey, gj_style, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(GJButtonStyle * _Nonnull)gj_style{
    objc_getAssociatedObject(self, button_styleKey);
    GJButtonStyle *s = [[GJButtonStyle alloc]init];
    s.view = self;
    return s;
}

- (void)gj_style:(void(^)(GJButtonStyle *style))style{
    GJButtonStyle *s = self.gj_style;
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
@dynamic gj_style;
static char  * imageView_styleKey ="imageView_styleKey";

-(void)setGj_style:(GJImageViewStyle * _Nonnull)gj_style{
    objc_setAssociatedObject(self, imageView_styleKey, gj_style, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(GJImageViewStyle * _Nonnull)gj_style{
    objc_getAssociatedObject(self, imageView_styleKey);
    GJImageViewStyle *s = [[GJImageViewStyle alloc]init];
    s.view = self;
    return s;
}

- (void)gj_style:(void(^)(GJImageViewStyle *style))style{
    GJImageViewStyle *s = self.gj_style;
    s.view = self;
    if (style) {
        style(s);
    }
}

@end

@implementation UITextField (GJControlStyle)
@dynamic gj_style;
static char  * textFiel_styleKey ="textFiel_styleKey";

-(void)setGj_style:(GJTextFieldStyle * _Nonnull)gj_style{
    objc_setAssociatedObject(self, textFiel_styleKey, gj_style, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(GJTextFieldStyle * _Nonnull)gj_style{
    objc_getAssociatedObject(self, textFiel_styleKey);
    GJTextFieldStyle *s = [[GJTextFieldStyle alloc]init];
    s.view = self;
    return s;
}

- (void)gj_style:(void(^)(GJTextFieldStyle *style))style{
    GJTextFieldStyle *s = self.gj_style;
    s.view = self;
    if (style) {
        style(s);
    }
}

@end

@implementation UIScrollView (GJControlStyle)
@dynamic gj_style;
static char  * scrollView_styleKey ="scrollView_styleKey";

-(void)setGj_style:(GJScrollViewStyle * _Nonnull)gj_style{
    objc_setAssociatedObject(self, scrollView_styleKey, gj_style, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(GJScrollViewStyle * _Nonnull)gj_style{
    objc_getAssociatedObject(self, scrollView_styleKey);
    GJScrollViewStyle *s = [[GJScrollViewStyle alloc]init];
    s.view = self;
    return s;
}

- (void)gj_style:(void(^)(GJScrollViewStyle *style))style{
    GJScrollViewStyle *s = self.gj_style;
    s.view = self;
    if (style) {
        style(s);
    }
}

@end

@implementation UITableView (GJControlStyle)
@dynamic gj_style;
static char  * tableView_styleKey ="tableView_styleKey";

-(void)setGj_style:(GJTableViewStyle * _Nonnull)gj_style{
    objc_setAssociatedObject(self, tableView_styleKey, gj_style, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(GJTableViewStyle *)gj_style{
    objc_getAssociatedObject(self, tableView_styleKey);
    GJTableViewStyle *s = [[GJTableViewStyle alloc]init];
    s.view = self;
    return s;
}

- (void)gj_style:(void(^)(GJTableViewStyle *style))style{
    GJTableViewStyle *s = self.gj_style;
    s.view = self;
    if (style) {
        style(s);
    }
}

@end

@implementation UICollectionView (GJControlStyle)
@dynamic gj_style;
static char  * collectionView_styleKey ="collectionView_styleKey";

-(void)setGj_style:(GJCollectionViewStyle * _Nonnull)gj_style{
    objc_setAssociatedObject(self, collectionView_styleKey, gj_style, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(GJCollectionViewStyle * _Nonnull)gj_style{
    objc_getAssociatedObject(self, collectionView_styleKey);
    GJCollectionViewStyle *s = [[GJCollectionViewStyle alloc]init];
    s.view = self;
    return s;
}

- (void)gj_style:(void(^)(GJCollectionViewStyle *style))style{
    GJCollectionViewStyle *s = self.gj_style;
    s.view = self;
    if (style) {
        style(s);
    }
}

@end
