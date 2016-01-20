//
//  MasterViewController.m
//  UrbanThings Mobile SDK Demo App
//
//  Created by UrbanThings on 19/01/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//
#import "MasterViewController.h"
#import "DetailViewController.h"
#import "MyAPIConstants.h"
#import "VehicleTypes.h"
#import "TransitDataSerializationConstants.h"

/*****************************************************************
 
 UrbanThings API Demo App & Framework v0.8
 =========================================
 
 This demonstration app makes a request to the API endpoint /static/stops to retrieve all car parks in Bristol, United Kingdom and display them within a UITableView.
 
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
 
 *****************************************************************/

@interface MasterViewController ()

@property NSArray *transitStops;
@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    
    // Create the UrbanThingsAPIClient helper class that will make the HTTP Requests for us
    self.apiClient = [[UrbanThingsAPIClient alloc] initWithBaseURL:kAPIBaseURL apiKey:kAPIKey];
    
    self.transitStops = @[ @{ @"name": @"Please wait..."  }  ];
}

- (void)viewWillAppear:(BOOL)animated {
    self.clearsSelectionOnViewWillAppear = self.splitViewController.isCollapsed;
    
    // Load car parks
    [self retrieveNearbyCarParks];
    
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void) retrieveNearbyCarParks {
    
    // Make a request to get all the stops inside a Lat/Lng box with StopMode 12  (i.e. 
    [self.apiClient makeHttpGetRequestWithPath:@"/api/2.0/static/stops"
                             queryItems:@[[NSURLQueryItem queryItemWithName:@"minLat" value:@"51.025"],
                                          [NSURLQueryItem queryItemWithName:@"minLng" value:@"-2.865"],
                                          [NSURLQueryItem queryItemWithName:@"maxlat" value:@"51.816"],
                                          [NSURLQueryItem queryItemWithName:@"maxlng" value:@"-2.295"],
                                          [NSURLQueryItem queryItemWithName:@"stopmodes" value: [@(VehicleTypeCar) stringValue]  ]]
                             completion:^(BOOL success, NSString *displayError, id responseObject) {
                                 if (success)
                                 {
                                     // Store the array of NSDictionary objects, each of which represents a TransitStop
                                     self.transitStops  = responseObject;
                                     [self.tableView reloadData];
                                 }
                                 else
                                 {
                                     [self handleErrorWithLocalizedDescription:displayError];
                                 }
                             }];
    
}

- (void) handleErrorWithLocalizedDescription:(NSString *)displayError {
    
    NSString * userError = [NSString stringWithFormat: @"%@ - ensure you have put your correct API Key into the source code in the file MyAPIConstants.m", displayError];
    NSLog(@"%@",userError);
    
    UIAlertController* alert = [UIAlertController
                                alertControllerWithTitle:@"Error"
                                message:userError
                                preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction
                                    actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                    handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDictionary *transitStop = self.transitStops[indexPath.row];
        DetailViewController *controller = (DetailViewController *)[[segue destinationViewController] topViewController];
        [controller setTransitStop:transitStop];
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.transitStops.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSDictionary * transitStop = self.transitStops[indexPath.row];
    cell.textLabel.text = [transitStop valueForKey:kJSONKeyPlacePointName];
    return cell;
}

- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Car parks in Bristol";
}

@end
