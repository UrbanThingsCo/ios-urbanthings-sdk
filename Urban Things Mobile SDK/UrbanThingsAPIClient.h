//
//  UrbanThingsAPIClient.h
//  UrbanThings Mobile SDK Demo App
//
//  Created by UrbanThings on 19/01/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UrbanThingsAPIClient : NSObject

// Properties
@property (nonatomic, strong) NSString * baseURL;
@property (nonatomic, strong) NSString * apiKey;
@property (nonatomic, strong) NSString * responseMimeType;

// Methods
- (instancetype)initWithBaseURL:(NSString *)baseURL apiKey:(NSString *)apiKey;

- (void) makeHttpGetRequestWithPath:(NSString *)requestPath
                         queryItems:(NSArray *)queryItems
                         completion:(void (^)(BOOL success, NSString * displayError, id responseObject))completion;

- (void) makeHttpPostRequestWithPath:(NSString *)requestPath
                          queryItems:(NSArray *)queryItems
                          postObject:(id)postObject
                          completion:(void (^)(BOOL success, NSString * displayError, id responseObject))completion;

@end
