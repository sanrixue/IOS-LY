//
//  Result.m
//
//  Created by   on 2017/9/14
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import "Result.h"


NSString *const kResultIsdefault = @"isdefault";
NSString *const kResultPid = @"pid";
NSString *const kResultId = @"id";
NSString *const kResultAname = @"aname";
NSString *const kResultAid = @"aid";
NSString *const kResultPname = @"pname";
NSString *const kResultUname = @"uname";
NSString *const kResultUmobile = @"umobile";
NSString *const kResultCname = @"cname";
NSString *const kResultUadd = @"uadd";
NSString *const kResultCid = @"cid";


@interface Result ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Result

@synthesize isdefault = _isdefault;
@synthesize pid = _pid;
@synthesize resultIdentifier = _resultIdentifier;
@synthesize aname = _aname;
@synthesize aid = _aid;
@synthesize pname = _pname;
@synthesize uname = _uname;
@synthesize umobile = _umobile;
@synthesize cname = _cname;
@synthesize uadd = _uadd;
@synthesize cid = _cid;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.isdefault = [self objectOrNilForKey:kResultIsdefault fromDictionary:dict];
            self.pid = [[self objectOrNilForKey:kResultPid fromDictionary:dict] doubleValue];
            self.resultIdentifier = [[self objectOrNilForKey:kResultId fromDictionary:dict] doubleValue];
            self.aname = [self objectOrNilForKey:kResultAname fromDictionary:dict];
            self.aid = [[self objectOrNilForKey:kResultAid fromDictionary:dict] doubleValue];
            self.pname = [self objectOrNilForKey:kResultPname fromDictionary:dict];
            self.uname = [self objectOrNilForKey:kResultUname fromDictionary:dict];
            self.umobile = [[self objectOrNilForKey:kResultUmobile fromDictionary:dict] doubleValue];
            self.cname = [self objectOrNilForKey:kResultCname fromDictionary:dict];
            self.uadd = [self objectOrNilForKey:kResultUadd fromDictionary:dict];
            self.cid = [[self objectOrNilForKey:kResultCid fromDictionary:dict] doubleValue];
    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.isdefault forKey:kResultIsdefault];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pid] forKey:kResultPid];
    [mutableDict setValue:[NSNumber numberWithDouble:self.resultIdentifier] forKey:kResultId];
    [mutableDict setValue:self.aname forKey:kResultAname];
    [mutableDict setValue:[NSNumber numberWithDouble:self.aid] forKey:kResultAid];
    [mutableDict setValue:self.pname forKey:kResultPname];
    [mutableDict setValue:self.uname forKey:kResultUname];
    [mutableDict setValue:[NSNumber numberWithDouble:self.umobile] forKey:kResultUmobile];
    [mutableDict setValue:self.cname forKey:kResultCname];
    [mutableDict setValue:self.uadd forKey:kResultUadd];
    [mutableDict setValue:[NSNumber numberWithDouble:self.cid] forKey:kResultCid];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description  {
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict {
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];

    self.isdefault = [aDecoder decodeObjectForKey:kResultIsdefault];
    self.pid = [aDecoder decodeDoubleForKey:kResultPid];
    self.resultIdentifier = [aDecoder decodeDoubleForKey:kResultId];
    self.aname = [aDecoder decodeObjectForKey:kResultAname];
    self.aid = [aDecoder decodeDoubleForKey:kResultAid];
    self.pname = [aDecoder decodeObjectForKey:kResultPname];
    self.uname = [aDecoder decodeObjectForKey:kResultUname];
    self.umobile = [aDecoder decodeDoubleForKey:kResultUmobile];
    self.cname = [aDecoder decodeObjectForKey:kResultCname];
    self.uadd = [aDecoder decodeObjectForKey:kResultUadd];
    self.cid = [aDecoder decodeDoubleForKey:kResultCid];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_isdefault forKey:kResultIsdefault];
    [aCoder encodeDouble:_pid forKey:kResultPid];
    [aCoder encodeDouble:_resultIdentifier forKey:kResultId];
    [aCoder encodeObject:_aname forKey:kResultAname];
    [aCoder encodeDouble:_aid forKey:kResultAid];
    [aCoder encodeObject:_pname forKey:kResultPname];
    [aCoder encodeObject:_uname forKey:kResultUname];
    [aCoder encodeDouble:_umobile forKey:kResultUmobile];
    [aCoder encodeObject:_cname forKey:kResultCname];
    [aCoder encodeObject:_uadd forKey:kResultUadd];
    [aCoder encodeDouble:_cid forKey:kResultCid];
}

- (id)copyWithZone:(NSZone *)zone {
    Result *copy = [[Result alloc] init];
    
    
    
    if (copy) {

        copy.isdefault = [self.isdefault copyWithZone:zone];
        copy.pid = self.pid;
        copy.resultIdentifier = self.resultIdentifier;
        copy.aname = [self.aname copyWithZone:zone];
        copy.aid = self.aid;
        copy.pname = [self.pname copyWithZone:zone];
        copy.uname = [self.uname copyWithZone:zone];
        copy.umobile = self.umobile;
        copy.cname = [self.cname copyWithZone:zone];
        copy.uadd = [self.uadd copyWithZone:zone];
        copy.cid = self.cid;
    }
    
    return copy;
}


@end
