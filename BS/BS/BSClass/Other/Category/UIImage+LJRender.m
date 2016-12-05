//
//  UIImage+LJRender.m
//  BS
//
//  Created by 俊哥哥 on 2016/12/4.
//  Copyright © 2016年 俊哥哥. All rights reserved.
//

#import "UIImage+LJRender.h"

@implementation UIImage (LJRender)



+(instancetype)imageWithRenderName:(NSString *)name
{
    
    UIImage *image = [UIImage imageNamed:name];
    
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
