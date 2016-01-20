//
//  DetailViewController.h
//  UrbanThings Mobile SDK Demo App
//
//  Created by UrbanThings on 19/01/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UrbanThingsAPIClient.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDictionary * transitStop;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (strong, nonatomic) UrbanThingsAPIClient * apiClient;

@end

