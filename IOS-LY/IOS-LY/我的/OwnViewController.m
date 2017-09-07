//
//  OwnViewController.m
//  IOS-LY
//
//  Created by 薛宇晶 on 2017/9/7.
//  Copyright © 2017年 XYJ. All rights reserved.
//

#import "OwnViewController.h"

@interface OwnViewController ()

@end

@implementation OwnViewController

-(instancetype)init
{
    self=[super init];
    if(self)
    {
        self.title=@"首页";
        
        self.navigationItem.title=@"首页";
        
        self.tabBarItem=[TabBarTool itemWithTitle:self.title andNormalImg:@"YS_index_nor" andSelectedImg:@"YS_index_sel"];
        
        
        self.view.backgroundColor=[UIColor whiteColor];
        
        UIImageView *titleImage = [[UIImageView alloc] init];
        titleImage.frame = CGRectMake(20, 20, 100, 44);
        titleImage.image = [UIImage imageNamed:@"royal"];
        self.navigationItem.titleView = titleImage;
        
    }
    return   self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
