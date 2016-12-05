//
//  UIBarButtonItem+LJNaBtnItem.m
//  BS
//
//  Created by 俊哥哥 on 2016/12/4.
//  Copyright © 2016年 俊哥哥. All rights reserved.
//

#import "UIBarButtonItem+LJNaBtnItem.h"

@implementation UIBarButtonItem (LJNaBtnItem)




+ (instancetype)BarNormalImage:(NSString *)NormalName HighlightedImage:(NSString *)HighlightName addTarget:(id)target action:(SEL)action{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:NormalName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:HighlightName] forState:UIControlStateHighlighted];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIView *contentView = [[UIView alloc] initWithFrame:btn.bounds];
    [contentView addSubview:btn];
    
    return [[self alloc] initWithCustomView:contentView];
}

+ (instancetype)BarNormalImage:(NSString *)NormalName SelectedImage:(NSString *)SelectedName addTarget:(id)target action:(SEL)action{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:NormalName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:SelectedName] forState:UIControlStateSelected];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIView *contentView = [[UIView alloc] initWithFrame:btn.bounds];
    [contentView addSubview:btn];
    
    return [[self alloc] initWithCustomView:contentView];
}



@end
