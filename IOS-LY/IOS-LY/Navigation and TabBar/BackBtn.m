//
//  BackBtn.m
//  MusTeam
//
//  Created by 三日 on 10/3/16.
//  Copyright © 2016 三日. All rights reserved.
//

#import "BackBtn.h"

@implementation BackBtn


-(instancetype)initWithFrame:(CGRect)frame andNavigationController:(UINavigationController*)NaviController
{
    self=[super initWithFrame:frame];
    
    if(self)
    {
        self.backImage=[UIImage imageNamed:@"nav_return"];
        [self setBackgroundImage:[self.backImage resizableImageWithCapInsets:UIEdgeInsetsMake(0, self.backImage.size.width-2, 0, 1)] forState:UIControlStateNormal];
        self.navigationController=NaviController;
        
        __weak UIButton *weakself;
        
        [self addTarget:weakself action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        
    }
    
    return self;
}


-(instancetype)initWithNavigationController:(UINavigationController*)NaviController andView:(UIView*)view
{
    self=[super init];
    
    if(self)
    {
        [self setFrame:CGRectMake(10, 30, 20, 30)];
        self.backImage=[UIImage imageNamed:@"nav_return"];
        [self setBackgroundImage:[self.backImage resizableImageWithCapInsets:UIEdgeInsetsMake(0, self.backImage.size.width-2, 0, 1)] forState:UIControlStateNormal];
        self.navigationController=NaviController;
        
        __weak UIButton *weakself;
        
        [self addTarget:weakself action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        
        [view addSubview:self];
    }
    return self;
}

-(void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
