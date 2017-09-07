//
//  TabBarTool.m
//  MusTeam
//
//  Created by 三日 on 9/29/16.
//  Copyright © 2016 三日. All rights reserved.
//

#import "TabBarTool.h"

@implementation TabBarTool

+(UITabBarItem*)itemWithTitle:(NSString*)title andNormalImg:(NSString*)NormalImg andSelectedImg:(NSString*)SelectedImg
{
    UIImage *normalImg=[[UIImage imageNamed:NormalImg]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectedImg=[[UIImage imageNamed:SelectedImg]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem *tabBarItem=[[UITabBarItem alloc]initWithTitle:title image:normalImg selectedImage:selectedImg];
    //设置 导航栏 字体颜色
    [tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:0.85 green:0.73 blue:0.55 alpha:1]} forState:UIControlStateSelected];
    
    return tabBarItem;
}


@end
