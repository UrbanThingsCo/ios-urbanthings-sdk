//
//  NSDictionaryCategories.h
//
//
//  Created by UrbanThings on 18/06/2012.
//  Copyright (c) 2016 UrbanThings All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDictionary (NSDictionaryCategories)

- (NSArray *) retrieveArrayForKey:(NSString *)key;
- (NSDictionary *) retrieveDictionaryForKey:(NSString *)key;
- (NSNumber *) retrieveNumberForKey:(NSString *)key;
- (NSString *) retrieveStringForKey:(NSString *)key;

- (id) retrieveObjectForKey:(NSString *)key ifKindOfClass:(Class)class;

- (BOOL) containsKey:(NSString *)key;


@end