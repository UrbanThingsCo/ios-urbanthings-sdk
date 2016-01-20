//
//  DetailViewController.m
//  UrbanThings Mobile SDK Demo App
//
//  Created by UrbanThings on 19/01/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//

#import "DetailViewController.h"
#import "MyAPIConstants.h"
#import "TransitDataSerializationConstants.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)settransitStop:(id)newtransitStop {
    if (_transitStop != newtransitStop) {
        _transitStop = newtransitStop;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.transitStop) {
        
        [self.apiClient makeHttpPostRequestWithPath:@"/api/2.0/rti/resources/status"
                                         queryItems:nil
                                          postObject:@[ [self.transitStop valueForKey:kJSONKeyPlacePointPrimaryCode] ]
                                         completion:^(BOOL success, NSString *displayError, id responseObject) {
                                             if (success)
                                             {
                                                 if ([responseObject isKindOfClass:[NSArray class]])
                                                 {
                                                     NSDictionary * resourceStatus = [responseObject firstObject];
                                                     [self configureLabelFromResourceStatus:resourceStatus];
                                                 }
                                             }
                                             else
                                             {
                                                 [self handleErrorWithLocalizedDescription:displayError];
                                             }
                                         }];
        

    }
}

- (void) configureLabelFromResourceStatus:(NSDictionary *)dResourceStatus {
    self.detailDescriptionLabel.text =
    [NSString stringWithFormat:@"Live status for '%@':\r\n'%@'\r\n\r\nUpdated at %@",
    [self.transitStop valueForKey:kJSONKeyPlacePointName],
    [dResourceStatus valueForKey:kJSONKeyResourceStatusStatusText],
     [dResourceStatus valueForKey:kJSONKeyResourceStatusTimeStamp]
     ];
}


- (void) handleErrorWithLocalizedDescription:(NSString *)displayError {
    // TODO: Display this error in the UI
    NSLog(@"%@",displayError);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create the UrbanThingsAPIClient helper class that will make the HTTP Requests for us
    self.apiClient = [[UrbanThingsAPIClient alloc] initWithBaseURL:kAPIBaseURL apiKey:kAPIKey];
    
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
