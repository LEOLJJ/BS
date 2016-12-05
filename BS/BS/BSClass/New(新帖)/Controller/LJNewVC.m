//
//  LJNewController.m
//  BS
//
//  Created by 俊哥哥 on 2016/12/4.
//  Copyright © 2016年 俊哥哥. All rights reserved.
//

#import "LJNewVC.h"

@interface LJNewVC ()

@end

@implementation LJNewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpNaBar];
}

//设置新帖导航条
- (void)setUpNaBar{
    
    //设置中间标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //设置左边标题
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem BarNormalImage:@"MainTagSubIcon" HighlightedImage:@"MainTagSubIconClick" addTarget:self action:@selector(mainTagSub)];
    
}

- (void)mainTagSub{
    NSLog(@"点击了菜单按钮");
}


@end
