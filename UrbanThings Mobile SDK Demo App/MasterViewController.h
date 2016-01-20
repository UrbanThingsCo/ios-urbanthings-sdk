//
//  MasterViewController.h
//  UrbanThings Mobile SDK Demo App
//
//  Created by UrbanThings on 19/01/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UrbanThingsAPIClient.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) UrbanThingsAPIClient * apiClient;
@property (strong, nonatomic) DetailViewController *detailViewController;


@end

