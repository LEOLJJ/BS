//
//  LJEssenceController.m
//  BS
//
//  Created by 俊哥哥 on 2016/12/4.
//  Copyright © 2016年 俊哥哥. All rights reserved.
//

#import "LJEssenceVC.h"
//#import "UIBarButtonItem+LJNaBtnItem.h"

@interface LJEssenceVC ()

@end

@implementation LJEssenceVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpNavBar];
}
//设置导航控制器

/*
 UIBarButtonItem-->修饰导航条上按钮具体的内容
 UITabBarItem -->修饰tabbar上面的内容
 navigationItem-->修饰导航条
 
 */


- (void)setUpNavBar{
    
  //中间标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
  //设置左边标题
//    UIButton *gameBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [gameBtn setImage:[UIImage imageNamed:@"nav_item_game_iconN"] forState:UIControlStateNormal];
//    [gameBtn setImage:[UIImage imageNamed:@"nav_item_game_click_iconN"] forState:UIControlStateHighlighted];
//    [gameBtn sizeToFit];
//    [gameBtn addTarget:self action:@selector(gameBtnClick) forControlEvents:UIControlEventTouchUpInside];
//    
//    UIView *contentView = [[UIView alloc] initWithFrame:gameBtn.bounds];
//    [contentView addSubview:gameBtn];
    
    //设置左边标题
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem BarNormalImage:@"nav_item_game_iconN" HighlightedImage:@"nav_item_game_click_iconN" addTarget:self action:@selector(gameBtnClick)];
    
    //设置右边标题
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem BarNormalImage:@"navigationButtonRandomN" HighlightedImage:@"navigationButtonRandomClickN" addTarget:self action:@selector(randomBtnClick)];

}

- (void)gameBtnClick{
    NSLog(@"点击了游戏按钮");
}

- (void)randomBtnClick{
    NSLog(@"点击了随机按钮");
}
@end
