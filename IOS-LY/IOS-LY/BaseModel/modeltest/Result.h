//
//  Result.h
//
//  Created by   on 2017/9/14
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Result : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *isdefault;
@property (nonatomic, assign) double pid;
@property (nonatomic, assign) double resultIdentifier;
@property (nonatomic, strong) NSString *aname;
@property (nonatomic, assign) double aid;
@property (nonatomic, strong) NSString *pname;
@property (nonatomic, strong) NSString *uname;
@property (nonatomic, assign) double umobile;
@property (nonatomic, strong) NSString *cname;
@property (nonatomic, strong) NSString *uadd;
@property (nonatomic, assign) double cid;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
