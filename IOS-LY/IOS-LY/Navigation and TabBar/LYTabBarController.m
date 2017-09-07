//
//  FoodTabBarController.m
//  SchoolFood
//
//  Created by 薛宇晶 on 2017/2/21.
//  Copyright © 2017年 薛宇晶. All rights reserved.
//

#import "LYTabBarController.h"
#import "MyTabBar.h"
@interface LYTabBarController ()

@end

@implementation LYTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置 底部导航颜色
//    [self.tabBar setTranslucent:YES];
    //
    //    [self.tabBar setBarStyle:UIBarStyleBlack];
//    
//    [self.tabBar setBarTintColor:[UIColor colorWithRed:238/255.0	 green:238/255.0 blue:238/255.0 alpha:1]];
    [self.tabBar setBarTintColor:[UIColor whiteColor]];
    
    
    MyTabBar *myTabBar = [[MyTabBar alloc] init];
      [self setValue:myTabBar forKey:@"tabBar"];
}


- (void)viewDidAppear:(BOOL)animated
{
    
    [super viewDidAppear:animated];
    
}


- (void)setViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers
{
    
    
    [super setViewControllers:viewControllers];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
