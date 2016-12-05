//
//  LJFriendTrendsController.m
//  BS
//
//  Created by 俊哥哥 on 2016/12/4.
//  Copyright © 2016年 俊哥哥. All rights reserved.
//

#import "LJFriendTrendsVC.h"

@interface LJFriendTrendsVC ()

@end

@implementation LJFriendTrendsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpNaBar];
    
}


- (void)setUpNaBar{
    
    //设置中间标题
    self.navigationItem.title = @"我的关注";
    //设置左边标题
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem BarNormalImage:@"friendsRecommentIcon" HighlightedImage:@"friendsRecommentIcon-click" addTarget:self action:@selector(friendsRecomment)];
    
}

- (void)friendsRecomment{
    
    NSLog(@"点击了添加按钮");
}
@end
