//
//  UrbanThingsAPIClient.m
//  UrbanThings Mobile SDK Demo App
//
//  Created by UrbanThings on 19/01/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//

/*****************************************************************
 
 UrbanThings API Client
 ======================
 
 This basic client is a wrapper around NSURLSession and NSURLRequest to make HTTPS requests to the API, with suitable configuration in place

 The client should be initialised using a suitable BaseURL and APIKey, e.g.
 
 UrbanThingsAPIClient * apiClient = [[UrbanThingsAPIClient alloc] initWithBaseURL:@"bristol.api.urbanthings.io" apiKey:@"ABC1234"];
 
 
 Once initialised there are two basic method calls for HTTP GET and HTTP POST requests, makeHttpGetRequestWithPath: and makeHttpPostRequestWithPath
 
 Note that, when POSTing objects, an NSArray or NSDictionary object is expected; serialization to JSON happens within this class.

 
 *****************************************************************/

#import "UrbanThingsAPIClient.h"

@implementation UrbanThingsAPIClient


- (instancetype)initWithBaseURL:(NSString *)baseURL apiKey:(NSString *)apiKey
{
    self = [super init];
    if (self) {
        self.baseURL = baseURL;
        self.apiKey = apiKey;
        // By default we specify that we require JSON formatted responses
        self.responseMimeType = @"application/json";
    }
    return self;
}


- (void) makeHttpGetRequestWithPath:(NSString *)requestPath
                         queryItems:(NSArray *)queryItems
                         completion:(void (^)(BOOL success, NSString * displayError, id responseObject))completion
{
    // Assemble the QueryItems, URL and request
    NSArray * allQueryItems = [self generateQueryItemsWithQueryItems:queryItems];
    NSURLComponents * urlComponents = [self configuredURLComponentsFromPath:requestPath queryItems:allQueryItems];
    NSMutableURLRequest * request = [self configuredMutableURLRequestWithURLComponents:urlComponents];
    
    
    // Execute the request
    [self makeHttpGenericRequest:request completion:completion];
}

- (void) makeHttpPostRequestWithPath:(NSString *)requestPath
                  queryItems:(NSArray *)queryItems
                          postObject:(id)postObject
                         completion:(void (^)(BOOL success, NSString * displayError, id responseObject))completion
{
    // Assemble the QueryItems, URL and request
    NSArray * allQueryItems = [self generateQueryItemsWithQueryItems:queryItems];
    NSURLComponents * urlComponents = [self configuredURLComponentsFromPath:requestPath queryItems:allQueryItems];
    NSMutableURLRequest * request = [self configuredMutableURLRequestWithURLComponents:urlComponents];
    
   
    // Json encode the POST object into the HTTP Body
    request.HTTPBody = [NSJSONSerialization dataWithJSONObject:postObject options:0 error:nil];
    request.HTTPMethod = @"POST";
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    // Execute the request
    [self makeHttpGenericRequest:request completion:completion];
}

- (void) makeHttpGenericRequest:(NSURLRequest *)request
                     completion:(void (^)(BOOL success, NSString * displayError, id responseObject))completion
{
    NSURLSession * session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
        long statusCode = (long)[httpResponse statusCode];
        
        // A non-200 status code indicates failure
        if (statusCode != 200)
        {
            dispatch_async(dispatch_get_main_queue(), ^{
                completion(NO, [NSHTTPURLResponse localizedStringForStatusCode:statusCode], nil);
            });
        }
        
        // No data should also indicate failure
        if (data == nil)
        {
            dispatch_async(dispatch_get_main_queue(), ^{
                completion(NO, @"No data", nil);
            });
        }

        // We're OK - deserialize the JSON data
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"%@", json);
        
        // All responses are wrapped in an 'APIResponse' object - examine this for a 'success' property
        id objSuccess = [json valueForKey:@"success"];
        if ([objSuccess isKindOfClass:[NSNumber class]])
        {
            BOOL isSuccess = [((NSNumber *)objSuccess) boolValue];
            if (isSuccess)
            {
                dispatch_async(dispatch_get_main_queue(), ^{
                    completion(YES, nil, [json valueForKey:@"data"]);
                });
            }
        }
        else
        {
            // This response, for some reason, was not wrapped in an APIResponse object, so as a fallback return it directly
            {
                dispatch_async(dispatch_get_main_queue(), ^{
                    completion(YES, nil, json);
                });
            }
        }
    }];

    // Make the HTTP request
    [dataTask resume];
}

- (NSArray *) generateQueryItemsWithQueryItems:(NSArray *)queryItems {
    // Add the user's API Key to list of Query Items
    NSMutableArray * mQueryItems = (queryItems != nil) ? [NSMutableArray arrayWithArray:queryItems] : [NSMutableArray array];
    [mQueryItems addObject:[NSURLQueryItem queryItemWithName:@"apikey" value:self.apiKey]];
    
    return mQueryItems;
}

- (NSURLComponents *) configuredURLComponentsFromPath:(NSString *)requestPath
                                           queryItems:(NSArray *)queryItems {
    NSURLComponents * urlComponents = [[NSURLComponents alloc] init];
    urlComponents.host = self.baseURL;
    urlComponents.path = requestPath;
    urlComponents.queryItems = queryItems;
    urlComponents.scheme = @"https";
    
    return urlComponents;
}
- (NSMutableURLRequest *) configuredMutableURLRequestWithURLComponents:(NSURLComponents *)urlComponents {
    NSMutableURLRequest * request = [[NSMutableURLRequest alloc] initWithURL:[urlComponents URL]
                                                                 cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
                                                             timeoutInterval:10.0];
    
    // Set the MIME type of the response that we require; default is JSON
    [request setValue:self.responseMimeType forHTTPHeaderField:@"Accept"];
    
    return request;
}



@end
