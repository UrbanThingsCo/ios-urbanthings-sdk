//
//  NSDictionaryCategories.m
//
//
//  Created by UrbanThings on 18/06/2012.
//  Copyright (c) 2016 UrbanThings All rights reserved.
//
//  Helper functions for use in deserialization

#import "NSDictionaryCategories.h"

@implementation NSDictionary (NSDictionaryCategories)

- (NSString *) retrieveStringForKey:(NSString *)key {
    return [self retrieveObjectForKey:key ifKindOfClass:[NSString class]];
}
- (NSNumber *) retrieveNumberForKey:(NSString *)key {
    return [self retrieveObjectForKey:key ifKindOfClass:[NSNumber class]];
}
- (NSArray *) retrieveArrayForKey:(NSString *)key {
    return [self retrieveObjectForKey:key ifKindOfClass:[NSArray class]];
}
- (NSDictionary *) retrieveDictionaryForKey:(NSString *)key {
    return [self retrieveObjectForKey:key ifKindOfClass:[NSDictionary class]];
}
- (id) retrieveObjectForKey:(NSString *)key ifKindOfClass:(Class)class {
    id obj = [self objectForKey:key];
    if ([obj isKindOfClass:class])
        return obj;
    else
        return nil;
}

- (BOOL) containsKey:(NSString *)key {
    return ([self objectForKey:key] != nil);
}

@end