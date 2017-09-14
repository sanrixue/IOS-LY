//
//  YHHttpRequestAPI.h
//  YH-IOS
//
//  Created by 薛宇晶 on 2017/7/24.
//  Copyright © 2017年 com.intfocus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^LYHttpRequestBlock)( BOOL success, id model, NSString* jsonObjc,NSArray *data);

#define defaultLimit @"15"

@interface LYHttpRequestAPI : NSObject

+(void)ly_getNoticeWarningInfoWithId:(NSString *)notice_id finish:(LYHttpRequestBlock)finish;



@end
