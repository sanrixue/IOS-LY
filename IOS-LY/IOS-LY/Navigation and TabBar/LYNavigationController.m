//
//  LYNavigationController.m
//  LY
//
//  Created by 薛宇晶 on 2017/2/21.
//  Copyright © 2017年 薛宇晶. All rights reserved.
//

#import "LYNavigationController.h"

@interface LYNavigationController ()

@end

@implementation LYNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationBar setTranslucent:YES];
    //设置 nacigationBar 顶部导航颜色
    //    [self.navigationBar setBarStyle:UIBarStyleBlack];
    
    [self.navigationBar setBarTintColor:[UIColor whiteColor]];
    
    [self.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:20],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    //返回字体颜色
    self.navigationBar.tintColor=[UIColor blackColor];
    
}


-(UIBarButtonItem*)createBackButton:(NSString*)title
{
    UIBarButtonItem *backBtnItem=[[UIBarButtonItem alloc]init];
    backBtnItem.title= title==nil ? @"返回":title;
    
    if(self.backImage==nil)
    {
        self.backImage=[UIImage imageNamed:@"nav_return"];
    }
    [backBtnItem setBackButtonBackgroundImage:[self.backImage resizableImageWithCapInsets:UIEdgeInsetsMake(0, self.backImage.size.width-2, 0, 1) ]  forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    return backBtnItem;
}


-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    UIViewController *vc=[self.viewControllers lastObject];
    vc.navigationItem.backBarButtonItem=[self createBackButton:vc.title];
    
    [super pushViewController:viewController animated:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
