//
//  UIBarButtonItem+LJNaBtnItem.h
//  BS
//
//  Created by 俊哥哥 on 2016/12/4.
//  Copyright © 2016年 俊哥哥. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (LJNaBtnItem)


/**
 封装导航条标题

 @param NormalName 普通状态图片名称
 @param HighlightName 高亮状态图片名称
 @param target 点击响应者
 @param action 响应方法
 @return 返回设置好的标题
 */
+ (instancetype)BarNormalImage:(NSString *)NormalName HighlightedImage:(NSString *)HighlightName addTarget:(id)target action:(SEL)action;


/**
 封装导航条标题

 @param NormalName 普通状态图片名称
 @param SelectedName 选中状态图片名称
 @param target 点击响应者
 @param action 响应方法
 @return 返回设置好的标题
 */
+ (instancetype)BarNormalImage:(NSString *)NormalName SelectedImage:(NSString *)SelectedName addTarget:(id)target action:(SEL)action;
@end
