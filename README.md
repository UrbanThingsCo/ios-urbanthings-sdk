#UrbanThings iOS SDK v0.8
iOS UrbanThings Mobile SDK - Create iOS apps that connect to the UrbanThings API to retrieve smart city data

This SDK allows you to quickly get up-and-running with an iOS-friendly client to access the [Urban Things API / Bristol API](https://portal-bristol.api.urbanthings.i)o

This demonstration app makes a request to the API endpoint `/static/stops` to retrieve all car parks in Bristol, United Kingdom and display them within a UITableView.
 
 If a table row is tapped, the object is passed to the DetailViewController and a second API request is made to determine the live ResourceStatus of the car park, i.e. its current occupancy.
 
 Note that making an API Request is as simple as using the supplied UrbanThingsAPIClient class, e.g.

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
     // Handle the error, show string displayError
   }
 }];

 
 This demonstration XCode project is made up of the sample app and, separately, a Cocoa Framework which consists of the APIClient and supporting constants and enums for use in JSON deserialization.
 
 At the moment, no NSObject classes are provided to correspond with the API data model, however if sufficient developer feedback is received, this will be reviewed in a future release.
