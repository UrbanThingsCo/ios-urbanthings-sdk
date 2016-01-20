//
//  PlacePointTypes.h
//  UrbanThings Mobile SDK Demo App
//
//  Created by UrbanThings on 19/01/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//

#ifndef PlacePointTypes_h
#define PlacePointTypes_h

// http://www.urbanthings.io
// See online documentation for explanation as to these Enumeration Values

typedef NS_ENUM(NSUInteger, PlacePointTypes) {
    PlacePointTypePlace = 0,
    PlacePointTypeRoad = 1,
    PlacePointTypeTransitStopGeneral =2,
    PlacePointTypePostcode = 3,
    PlacePointTypeLatLng = 4,
    PlacePointTypeLocality = 5,
    PlacePointTypePOI = 6,
    PlacePointTypeTransitStopTram = 100,
    PlacePointTypeTransitStopSubway = 101,
    PlacePointTypeTransitStopRail = 102,
    PlacePointTypeTransitStopBus = 103,
    PlacePointTypeTransitStopFerry = 104,
    PlacePointTypeTransitStopCableCar = 105,
    PlacePointTypeTransitStopGondola = 106,
    PlacePointTypeTransitStopFunicular = 107,
    PlacePointTypeTransitStopAir = 108,
    PlacePointTypeCycleHireDock = 111,
    PlacePointTypeCarParkingSpace = 112
};



#endif /* PlacePointTypes_h */
