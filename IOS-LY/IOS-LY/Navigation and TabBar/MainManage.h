//
//  MainManage.h
//  MusTeam
//
//  Created by 三日 on 9/28/16.
//  Copyright © 2016 三日. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainManage : NSObject

@property(nonatomic,strong)UIViewController *mainViewController;


+(id)shared;

@end
