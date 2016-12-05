//
//  LJNaVC.m
//  BS
//
//  Created by 俊哥哥 on 2016/12/5.
//  Copyright © 2016年 俊哥哥. All rights reserved.
//

#import "LJNaVC.h"
#import "LJNaBar.h"

@interface LJNaVC ()

@end

@implementation LJNaVC

+ (void)load{
    
    UINavigationBar *bar = [UINavigationBar appearance];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    [bar setTitleTextAttributes:dict];
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    LJNaBar *bar = [[LJNaBar alloc] init];
    [self setValue:bar forKey:@"navigationBar"];

}


@end
