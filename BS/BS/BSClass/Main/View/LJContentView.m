//
//  LJContentView.m
//  BS
//
//  Created by 俊哥哥 on 2016/12/5.
//  Copyright © 2016年 俊哥哥. All rights reserved.
//

#import "LJContentView.h"

@implementation LJContentView



+ (instancetype)barImageNormal:(NSString *)normalImageName imageHighlight:(NSString *)highlightImageName setTitle:(NSString *)text addTarget:(id)target action:(SEL)action{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highlightImageName] forState:UIControlStateHighlighted];
    
    [btn setTitle:text forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    ////通过view包装以解决超出范围响应bug,
    LJContentView *contentView = [[LJContentView alloc] initWithFrame:btn.bounds];
    //contentView.backgroundColor = [UIColor grayColor];
    [contentView addSubview:btn];
    
    return contentView;
}


@end
