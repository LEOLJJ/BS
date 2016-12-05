//
//  UIView+LJFrame.m
//  BS
//
//  Created by 俊哥哥 on 2016/12/5.
//  Copyright © 2016年 俊哥哥. All rights reserved.
//

#import "UIView+LJFrame.h"

@implementation UIView (LJFrame)


//设置控件x
- (void)setLJ_x:(CGFloat)LJ_x{
    
    CGRect frame = self.frame;
    frame.origin.x = LJ_x;
    self.frame = frame;
}

- (CGFloat)LJ_x{
    
    return self.frame.origin.x;
}


//设置控件y
- (void)setLJ_y:(CGFloat)LJ_y{
    
    CGRect frame = self.frame;
    frame.origin.x = LJ_y;
    self.frame = frame;
}

- (CGFloat)LJ_y{
    
    return self.frame.origin.y;
}


//设置控件宽度
- (void)setLJ_w:(CGFloat)LJ_w{
    
    CGRect frame = self.frame;
    frame.size.width = LJ_w;
    self.frame = frame;
}

- (CGFloat)LJ_w{
    
    return self.frame.size.width;
}


//设置控件高度
- (void)setLJ_h:(CGFloat)LJ_h{
    
    CGRect frame = self.frame;
    frame.size.height = LJ_h;
    self.frame = frame;
}

- (CGFloat)LJ_h{
    
    return self.frame.size.height;
}
@end
