# UrbanThings iOS SDK v0.8
iOS UrbanThings Mobile SDK - Create iOS apps that connect to the UrbanThings API to retrieve smart city data

This SDK allows you to quickly get up-and-running with an iOS-friendly client to access the [Urban Things API / Bristol API](https://portal-bristol.api.urbanthings.i)

## System Requirements
- Mac OS X 10.10 or greater
- XCode 7.1 or greater

## Installation
Simply clone this repository and open the supplied `XCodeProj` file within XCode 7.1 or greater.

To get the demonstration app working, you will need to modify the file `UrbanThingsConstants.h` to add in the API key that you received when you registered via the [portal](https://bristol-portal.api.urbanthings.io)

## Overview
The SDK is shipped as an XCode Project made up of two separate targets
- The iOS SDK Framework
- The iOS Demo App

The demo app depends upon the Framework, which is, by default, embedded inside it.

## 1. The SDK Framework
The framework consists of, for now, a relatively simple `UrbanThingsAPIClient` class that handles the heavy lifting of making HTTP `GET` and `POST` requests to the API.

Data is returned, via a completion block:

    completion:^(BOOL success, NSString *displayError, id responseObject)

The client handles the unwrapping of the `APIResponse` object and returns its `data` field as a `responseObject` if the request has succeeded.

If the request fails (either by the API returning a non-200 Status Code, or an `APIResponse` with the `Success` field set to `FALSE`) then the client returns a `nil` response object and an appropriate `displayError` string broadly describing the reason for failure. _Note that the raw HTTP message describing failure information is not currently passed through by the client._

## 2. The iOS Demo App

### Functionality
The iOS demo app displays a `UITableView` containing a list of all the car parks in Bristol & Bath, United Kingdom.   If a table row is tapped, the object is passed to the DetailViewController and a second API request is made to determine the live `ResourceStatus` of the car park, i.e. its current occupancy.

### Implementation
The demo app uses the `UrbanThingsAPIClient` described above to make a request to the `/static/stops` endpoint and retrieve all the car parks within the specified latitude/longitude bounding box.  e.g.

    UrbanThingsAPIClient * apiClient = [[UrbanThingsAPIClient alloc] initWithBaseURL:kAPIBaseURL apiKey:kAPIKey];
 
     [self.apiClient makeHttpGetRequestWithPath:@"/api/2.0/static/stops"
        queryItems:@[[NSURLQueryItem queryItemWithName:@"some_querystring_paramter_key" value:@"some_value"]]
        completion:^(BOOL success, NSString *displayError, id responseObject) {
    if (success)
    {
        // Do something with responseObject, which will be either an NSArray or a NSDictionary
    }
    else
    {
        // Handle the error, by displaying the string displayError
    }
    }];
