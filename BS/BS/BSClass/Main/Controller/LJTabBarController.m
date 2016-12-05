//
//  LJTabBarController.m
//  BS
//
//  Created by 俊哥哥 on 2016/12/4.
//  Copyright © 2016年 俊哥哥. All rights reserved.
//

#import "LJTabBarController.h"
#import "LJEssenceVC.h"
#import "LJFriendTrendsVC.h"
#import "LJMineVC.h"
#import "LJNewVC.h"
#import "LJPublishVC.h"
#import "LJNaVC.h"

#import "UIImage+LJRender.h"

@interface LJTabBarController ()

@property(nonatomic, weak)UIButton *publish;

@end

@implementation LJTabBarController

#define tabBarW self.tabBar.bounds.size.width
#define tabBarH self.tabBar.bounds.size.height
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar.tintColor = [UIColor blackColor];
    //添加所有子控制器
    [self setUpAllChildController];
    //添加所有子控制器的button
    [self setAllTabBarBtn];
    //设置发布按钮的位置
    self.publish.center = CGPointMake(tabBarW * 0.5, tabBarH * 0.5);
    //设置tabBar的背景图片
    self.tabBar.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
}

#pragma mark - TabBar标题图片

//发布按钮设置,懒加载
- (UIButton *)publish{
    if (_publish == nil) {
        
        UIButton *publish = [UIButton buttonWithType:UIButtonTypeCustom];
        [publish setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publish setImage:[UIImage imageNamed:@"tabBar_new_click_icon"] forState:UIControlStateSelected];
        [publish sizeToFit];
        [publish addTarget:self action:@selector(publishBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [self.tabBar addSubview:publish];
        _publish = publish;
    }
    return _publish;
}


- (void)publishBtnClick{
    NSLog(@"点击了发布按钮");
}



//设置全局TabBar字体大小
+ (void)load{//程序启动会调用,值调用一次
    //
    UITabBarItem * tabBarItem = [UITabBarItem appearance];
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    [tabBarItem setTitleTextAttributes:dict forState:UIControlStateNormal];
    
}


//设置子控件图片字体
- (void)setAllTabBarBtn{
    //精华
    UINavigationController *vc0 = self.childViewControllers[0];
    vc0.tabBarItem.title = @"精华";
    vc0.tabBarItem.image = [UIImage imageWithRenderName:@"tabBar_essence_icon"];
    vc0.tabBarItem.selectedImage = [UIImage imageWithRenderName:@"tabBar_essence_click_icon"];
    
    //新帖
    UINavigationController *vc1 = self.childViewControllers[1];
    vc1.tabBarItem.title = @"新帖";
    vc1.tabBarItem.image = [UIImage imageWithRenderName:@"tabBar_new_icon"];
    vc1.tabBarItem.selectedImage = [UIImage imageWithRenderName:@"tabBar_new_click_icon"];
    
    //发布控制器
    UIViewController *vc2 = self.childViewControllers[2];
    vc2.tabBarItem.enabled = NO;
//    vc2.tabBarItem.image = [UIImage imageWithRenderName:@"tabBar_publish_icon"];
//    vc2.tabBarItem.selectedImage = [UIImage imageWithRenderName:@"tabBar_publish_click_icon"];
//    
    //关注控制器
    UINavigationController *vc3 = self.childViewControllers[3];
    vc3.tabBarItem.title = @"关注";
    vc3.tabBarItem.image = [UIImage imageWithRenderName:@"tabBar_friendTrends_icon"];
    vc3.tabBarItem.selectedImage = [UIImage imageWithRenderName:@"tabBar_friendTrends_click_icon"];
    
    //Mine控制器
    UINavigationController *vc4 = self.childViewControllers[4];
    vc4.tabBarItem.title = @"我";
    vc4.tabBarItem.image = [UIImage imageWithRenderName:@"tabBar_me_icon"];
    vc4.tabBarItem.selectedImage = [UIImage imageWithRenderName:@"tabBar_me_click_icon"];
    
}



#pragma mark - 添加子控制器
- (void)setUpAllChildController{
    //精华控制器
    LJEssenceVC * vc1 = [[LJEssenceVC alloc]init];
    vc1.view.backgroundColor = [UIColor redColor];
    LJNaVC *na1 = [[LJNaVC alloc] initWithRootViewController:vc1];
    [self addChildViewController:na1];
    
    //新贴的控制器
    LJNewVC * vc2 = [[LJNewVC alloc]init];
    vc2.view.backgroundColor = [UIColor yellowColor];
    LJNaVC *na2 = [[LJNaVC alloc]initWithRootViewController:vc2];
    [self addChildViewController:na2];
    
    
    //发布控制器
    LJPublishVC * vc3 = [[LJPublishVC alloc]init];
    vc3.view.backgroundColor = [UIColor greenColor];
    [self addChildViewController:vc3];


    
    //关注控制器
    LJFriendTrendsVC * vc4 = [[LJFriendTrendsVC alloc]init];
    vc4.view.backgroundColor = [UIColor blueColor];
    LJNaVC *na4 = [[LJNaVC alloc]initWithRootViewController:vc4];
    [self addChildViewController:na4];
    
    //Mine的控制器
    LJMineVC * vc5 = [[LJMineVC alloc]init];
    LJNaVC *na5 = [[LJNaVC alloc]initWithRootViewController:vc5];
    [self addChildViewController:na5];
    
   



    
}

@end
