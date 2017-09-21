//
//  BackBtn.h
//  MusTeam
//
//  Created by 三日 on 10/3/16.
//  Copyright © 2016 三日. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BackBtn : UIButton

@property(nonatomic,strong)UIImage *backImage;
@property(nonatomic,strong)UINavigationController *navigationController;
    
-(instancetype)initWithFrame:(CGRect)frame andNavigationController:(UINavigationController*)NaviController;
-(instancetype)initWithNavigationController:(UINavigationController*)NaviController andView:(UIView*)view;

@end
