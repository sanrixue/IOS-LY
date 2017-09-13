//
//  YHHttpRequestAPI.h
//  YH-IOS
//
//  Created by 薛宇晶 on 2017/7/24.
//  Copyright © 2017年 com.intfocus. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^LYHttpRequestBlock)( BOOL success, id model, NSString* jsonObjc);

#define defaultLimit @"15"

@interface LYHttpRequestAPI : NSObject
/**
 获取消息警告列表接口

 @param types @[1,2,3,4]自由组合
 @param page page description
 @param finish finish description
 */
//+ (void)yh_getNoticeWarningListWithTypes:(NSArray<NSString*>*)types
//                                    page:(NSInteger)page
//                                   finish:(YHHttpRequestBlock)finish;


@end
