//
//  LJMineTableController.m
//  BS
//
//  Created by 俊哥哥 on 2016/12/4.
//  Copyright © 2016年 俊哥哥. All rights reserved.
//

#import "LJMineVC.h"
#import "LJSettingVC.h"

@interface LJMineVC ()

@end

@implementation LJMineVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpNavBar];
    
}


//设置导航条
- (void)setUpNavBar{
    //设置导航条标题
    self.navigationItem.title = @"我的";
    
    //设置月亮按钮
    UIBarButtonItem * nightBtn = [UIBarButtonItem BarNormalImage:@"mine-moon-icon" SelectedImage:@"mine-moon-icon-click" addTarget:self action:@selector(moonBtnClick:)];
    
    //设置 设置按钮
    UIBarButtonItem * settingBtn = [UIBarButtonItem BarNormalImage:@"mine-setting-icon" HighlightedImage:@"mine-setting-icon-click" addTarget:self action:@selector(settingBtnClick)];
    //添加当前导航条,数组的形式
    self.navigationItem.rightBarButtonItems = @[settingBtn, nightBtn];
}

//月亮按钮点击响应方法
- (void)moonBtnClick:(UIButton *)btn{
    
    btn.selected = !btn.isSelected;
}

//设置按钮点击响应方法
- (void)settingBtnClick{
    
    LJSettingVC *settingVC = [[LJSettingVC alloc] init];
    [self.navigationController pushViewController:settingVC animated:YES];
    
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/


@end
