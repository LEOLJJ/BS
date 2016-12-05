//
//  LJContentView.h
//  BS
//
//  Created by 俊哥哥 on 2016/12/5.
//  Copyright © 2016年 俊哥哥. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LJContentView : UIView



/**
 封装返回View
 
 @param normalImageName 普通状态下的图片
 @param highlightImageName 高亮状态下的图片
 @param text 标题
 @param target 事件响应者
 @param action 响应方法
 @return 返回一个设置的View出去
 */
+ (instancetype)barImageNormal:(NSString *)normalImageName imageHighlight:(NSString *)highlightImageName setTitle:(NSString *)text addTarget:(id)target action:(SEL)action;
@end
