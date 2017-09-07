//
//  MainManage.m
//  MusTeam
//
//  Created by 三日 on 9/28/16.
//  Copyright © 2016 三日. All rights reserved.
//

#import "MainManage.h"
#import "TravelViewController.h"
#import "HomeViewController.h"
#import "OwnViewController.h"
#import "RentalCarViewController.h"
#import "LYTabBarController.h"
#import "LYNavigationController.h"
#import "MyTabBar.h"

@interface  MainManage()


//首页
@property(nonatomic,strong)HomeViewController *HomeVC;
//租车
@property(nonatomic,strong)RentalCarViewController *RentalCarVC;
//出游
@property(nonatomic,strong)TravelViewController *TravelVC;
//我的
@property(nonatomic,strong)OwnViewController *OwnVC;


@property(nonatomic,strong)LYTabBarController *taBarController;

@end

static MainManage *manage;
static dispatch_once_t onceCarry;


@implementation MainManage


+(id)shared
{
    dispatch_once(&onceCarry, ^{
        manage=[[MainManage alloc]init];
    });
    
    return manage;
}

-(instancetype)init
{
    self=[super init];
    
    if(self)
    {
        self.mainViewController=[self creatMainVC];
    }
    
    return  self;
}

-(UIViewController*)creatMainVC
{
    _HomeVC=[[HomeViewController alloc]init];

    _RentalCarVC=[[RentalCarViewController alloc] init];
    
    _TravelVC=[[TravelViewController alloc] init];

    _OwnVC=[[OwnViewController alloc] init];
    

    LYNavigationController *HomeNavi=[[LYNavigationController alloc]initWithRootViewController:_HomeVC];

    LYNavigationController *RentalCarNavi=[[LYNavigationController alloc]initWithRootViewController:_RentalCarVC];
    
    LYNavigationController *TravelNavi=[[LYNavigationController alloc]initWithRootViewController:_TravelVC];
    
    LYNavigationController *OwnNavi=[[LYNavigationController alloc]initWithRootViewController:_OwnVC];
    
    self.taBarController=[[LYTabBarController alloc]init];
    self.taBarController.viewControllers=[NSArray arrayWithObjects:HomeNavi,RentalCarNavi,TravelNavi,OwnNavi, nil];
    
    self.taBarController.selectedIndex=0;
    
    return self.taBarController;
}

-(void)pressedCenterBtn
{
    self.taBarController.selectedIndex=2;
}



@end
