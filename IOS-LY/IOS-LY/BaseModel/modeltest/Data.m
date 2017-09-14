//
//  Data.m
//
//  Created by   on 2017/9/14
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import "Data.h"
#import "Result.h"


NSString *const kDataResult = @"result";


@interface Data ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Data

@synthesize result = _result;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
    NSObject *receivedResult = [dict objectForKey:kDataResult];
    NSMutableArray *parsedResult = [NSMutableArray array];
    
    if ([receivedResult isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedResult) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedResult addObject:[Result modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedResult isKindOfClass:[NSDictionary class]]) {
       [parsedResult addObject:[Result modelObjectWithDictionary:(NSDictionary *)receivedResult]];
    }

    self.result = [NSArray arrayWithArray:parsedResult];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForResult = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.result) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForResult addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForResult addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForResult] forKey:kDataResult];

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

    self.result = [aDecoder decodeObjectForKey:kDataResult];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_result forKey:kDataResult];
}

- (id)copyWithZone:(NSZone *)zone {
    Data *copy = [[Data alloc] init];
    
    
    
    if (copy) {

        copy.result = [self.result copyWithZone:zone];
    }
    
    return copy;
}


@end
