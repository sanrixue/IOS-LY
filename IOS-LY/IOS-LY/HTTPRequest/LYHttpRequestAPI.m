//
//  YHHttpRequestAPI.m
//  YH-IOS
//
//  Created by cjg on 2017/7/24.
//  Copyright © 2017年 XYJ. All rights reserved.
//

#import "LYHttpRequestAPI.h"
#import "BaseRequest.h"
#import "NSObject+MJKeyValue.h"
#import "Result.h"
#import "BaseClass.h"
#import "Data.h"
#define CurAfnManager [BaseRequest afnManager]

@implementation LYHttpRequestAPI

//测试的接口 与 model 解锁
+ (void)ly_getNoticeWarningInfoWithId:(NSString *)notice_id finish:(LYHttpRequestBlock)finish
{
    //http://123.206.206.45:8080/wheat/app_receiverInfo_list?uid=1661
    
    NSString *url=[NSString stringWithFormat:@"http://123.206.206.45:8080/wheat/app_receiverInfo_list?uid=%ld",(long)[notice_id integerValue]];
    [BaseRequest getRequestWithUrl:url Params:NULL needHandle:YES requestBack:^(BOOL requestSuccess, id response, NSString *responseJson) {
      
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:response options:NSJSONReadingMutableContainers error:nil];
        BaseClass *model=[BaseClass modelObjectWithDictionary:dict];
        Data *dataModel=[Data modelObjectWithDictionary:[dict objectForKey:@"data"]];
        NSArray *data=dataModel.result;
        Result *a=data[0];
        NSLog(@"%@",a.pname);
        finish(requestSuccess,model,responseJson,data);
    }];
}


@end
