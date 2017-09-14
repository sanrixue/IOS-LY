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


//+ (void)yh_getNoticeWarningDetailWithNotice_id:(NSString *)notice_id finish:(LYHttpRequestBlock)finish{
//    NSString* url = [NSString stringWithFormat:@"%@/api/v1/user/%@/notice/%@",kBaseUrl,[self user].userID,notice_id];
//    NSDictionary *dict = @{
//                           @"_user_num":[self user_num],
//                           @"_user_device_id":[self user_device_id],
//                           @"_app_version":[self app_version],
//                           @"_coordinate":[self coordinate],
//                           };
//    [BaseRequest getRequestWithUrl:url Params:dict needHandle:YES requestBack:^(BOOL requestSuccess, id response, NSString *responseJson) {
////        NoticeWarningDetailModel* model = [NoticeWarningDetailModel mj_objectWithKeyValues:response];
////        finish(requestSuccess,model,responseJson);
//    }];
//}

+ (void)ly_getNoticeWarningInfoWithId:(NSString *)notice_id finish:(LYHttpRequestBlock)finish
{
    //http://123.206.206.45:8080/wheat/app_receiverInfo_list?uid=1661
    
    NSString *url=[NSString stringWithFormat:@"http://123.206.206.45:8080/wheat/app_receiverInfo_list?uid=%ld",(long)[notice_id integerValue]];
    

    [BaseRequest getRequestWithUrl:url Params:NULL needHandle:YES requestBack:^(BOOL requestSuccess, id response, NSString *responseJson) {
      
//        HomeTestModel* homemodel = [HomeTestModel mj_objectWithKeyValues:response];

//        - (instancetype)initWithDictionary:(NSDictionary *)dict;

        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:response options:NSJSONReadingMutableContainers error:nil];
      
        BaseClass *model=[BaseClass modelObjectWithDictionary:dict];


        Data *dataModel=[Data modelObjectWithDictionary:[dict objectForKey:@"data"]];

        NSArray *data=dataModel.result;
        
       
        
         Result *a=data[0];
        
         NSLog(@"%@",a.pname);
        
//        Result *info=[Result modelObjectWithDictionary:data[0]];

//        + (NSMutableArray *)mj_objectArrayWithKeyValuesArray:(id)keyValuesArray;
        
//        HomeTestModel *models=[MTLJSONAdapter modelOfClass:[HomeTestModel class] fromJSONDictionary:dict error:nil];

        finish(requestSuccess,model,responseJson,data);
        
    }];
    
}


@end
