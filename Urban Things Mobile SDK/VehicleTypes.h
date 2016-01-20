//
//  VehicleTypes.h
//
//
//  Created by UrbanThings on 11/12/2014.
//  Copyright (c) 2016 UrbanThings All rights reserved.
//

#ifndef Bus_Checker_VehicleTypes_h
#define Bus_Checker_VehicleTypes_h

// http://www.urbanthings.io
// See online documentation for explanation as to these Enumeration Values

typedef NS_ENUM(NSUInteger, VehicleTypes) {
    VehicleTypeTram = 0,
    VehicleTypeSubway = 1,
    VehicleTypeRail = 2,
    VehicleTypeBus = 3,
    VehicleTypeFerry = 4,
    VehicleTypeCableCar =5,
    VehicleTypeGondola =6,
    VehicleTypeFunicular =7,
    VehicleTypeAir =8,
    VehicleTypeWalking =9,
    VehicleTypeCycleOwned =10,
    VehicleTypeCycleHired =11,
    VehicleTypeCar = 12,
    VehicleTypeCoach = 13,
    VehicleTypeUnset = 9999
};

// Used for enumeration
static inline VehicleTypes VehicleTypesFirst() { return VehicleTypeTram; }
static inline VehicleTypes VehicleTypesLast() { return VehicleTypeCoach; }


#endif
