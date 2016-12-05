//
//  LJNaBar.m
//  BS
//
//  Created by 俊哥哥 on 2016/12/5.
//  Copyright © 2016年 俊哥哥. All rights reserved.
//

#import "LJNaBar.h"
#import "LJContentView.h"

@implementation LJNaBar



- (void)layoutSubviews{
    [super layoutSubviews];
    
    for (UIView * view in self.subviews) {
        if ([view isKindOfClass:[LJContentView class]]) {
            
            view.LJ_x = 0;
        }
    }
    
}



@end
