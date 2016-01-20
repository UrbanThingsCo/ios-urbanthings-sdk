//
//  TransitDataSerializationConstants.h
//
//
//  Created by UrbanThings on 26/09/2014.
//  Copyright (c) 2016 UrbanThings All rights reserved.
//

#import <Foundation/Foundation.h>


// PlacePoint
FOUNDATION_EXPORT NSString * const kJSONKeyPlacePointPrimaryCode;
FOUNDATION_EXPORT NSString * const kJSONKeyPlacePointUniqueIdentifier;
FOUNDATION_EXPORT NSString * const kJSONKeyPlacePointLat ;
FOUNDATION_EXPORT NSString * const kJSONKeyPlacePointLng ;
FOUNDATION_EXPORT NSString * const kJSONKeyPlacePointName ;
FOUNDATION_EXPORT NSString * const kJSONKeyPlacePointLocalityName;
FOUNDATION_EXPORT NSString * const kJSONKeyPlacePointName_alt ;
FOUNDATION_EXPORT NSString * const kJSONKeyPlacePointPlacePointType;
FOUNDATION_EXPORT NSString * const kJSONKeyPlacePointCountry;
FOUNDATION_EXPORT NSString * const kJSONKeyPlacePointImportSource;
// Subclass type casting
FOUNDATION_EXPORT NSString * const kJSONKeyPlacePointSubClassType;
FOUNDATION_EXPORT NSString * const kJSONKeyPlacePointSubClassTransitStop;

// TransitStop
FOUNDATION_EXPORT NSString * const kJSONKeyTransitStopAdditionalCode ;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitStopSMSCode ;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitStopArrivalsProviders ;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitStopBearing ;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitStopDirection ;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitStopIsClosed ;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitStopLocalityName ;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitStopProviderID ;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitStopServices ;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitStopStopIndicator ;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitStopStopMode ;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitStopTowards;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitStopRouteHints;

// TransitRouteIdentifier
FOUNDATION_EXPORT NSString * const kJSONKeyTransitRouteIdentifierRouteID ;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitRouteIdentifierDestAtStop ;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitRouteIdentifierLineColor;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitRouteIdentifierLineTextColor;
FOUNDATION_EXPORT NSString * const kJSONKeyTransitRouteIdentifierLineName ;



// DirectionsRequest
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestAgencyCode;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestArrivalTime ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestDepartureTime ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestJourneyTimeMode ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestEnableRouteGeometry ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestLanguage;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestMaximumJourneys;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestPreviousResponseID ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestTravelContext ;

FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestOrigin ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestDestination;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestOptions;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestCustomOptions;

// DirectionsRequestOptions
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestOptionsAcceptableVehicleTypes;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestOptionsAccessibilityNoElevators ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestOptionsAccessibilityNoEscalators ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestOptionsAccessibilityNoStairs ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestOptionsAccessibilityNoStepsToPlatform ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestOptionsAccessibilityNoStepsToVehicle;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestOptionsAvoidedLineTypes;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestOptionsMaximumLegs ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestOptionsMaximumWalkingLegTime;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestOptionsMaximumWalkingLegTimeBetweenLegs;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestOptionsPlanningPrioritization;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestOptionsWalkSpeed ;


//DirectionsRequestCustomOptions
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsRequestCustomOptionsKeyValues;

// DirectionsResponse
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsResponseResponseID;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsResponseDisambiguationQuery ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsResponsePlacePoints;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsResponseJourneys;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsResponseStatus;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsResponseSourceName;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsResponseWarnings;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsResponseAttributions;

// DirectionsResponseStatus
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsResponseStatusStatusCode;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsResponseStatusErrorCode;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsResponseStatusErrorMessage;

// Journey
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsJourneyArrivalTime;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsJourneyChangeCount ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsJourneyDepartureTime;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsJourneyDestinationPlacePointID ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsJourneyDuration;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsJourneyOriginPlacePointID ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsJourneySummaryHTML;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsJourneyLegs;

// JourneyLeg
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsLegObjectType;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsLegArrivalTime;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsLegDepartureTime;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsLegDestinationPlacePointID;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsLegDistance;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsLegDuration ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsLegOriginPlacePointID;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsLegPolyline ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsLegSteps ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsLegSummaryHTML ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsLegVehicleType ;

// TransitJourneyLeg
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsTransitLegLinkedTransitRouteInfo ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsTransitLegDisruptions ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsTransitLegOriginStopCall ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsTransitLegDestinationStopCall ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsTransitLegVehicleRTI ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsTransitLegLinkedTransitTripInfo ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsTransitLegScheduledStopCalls ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsTransitLegScheduledStopCallTimesAreAccurate ;
FOUNDATION_EXPORT NSString * const kJSONKeyDirectionsTransitLegReferenceStopID ;

// Disruption
FOUNDATION_EXPORT NSString * const kJSONKeyDisruptionStartDate;
FOUNDATION_EXPORT NSString * const kJSONKeyDisruptionEndDate;
FOUNDATION_EXPORT NSString * const kJSONKeyDisruptionLocalizedAdditionalInfo ;
FOUNDATION_EXPORT NSString * const kJSONKeyDisruptionSeverity;
FOUNDATION_EXPORT NSString * const kJSONKeyDisruptionLocalizedDescription ;

// ResourceStatus
FOUNDATION_EXPORT NSString * const kJSONKeyResourceStatusAvailablePlaces ;
FOUNDATION_EXPORT NSString * const kJSONKeyResourceStatusPrimaryCode;
FOUNDATION_EXPORT NSString * const kJSONKeyResourceStatusIsClosed ;
FOUNDATION_EXPORT NSString * const kJSONKeyResourceStatusStatusText ;
FOUNDATION_EXPORT NSString * const kJSONKeyResourceStatusTakenPlaces ;
FOUNDATION_EXPORT NSString * const kJSONKeyResourceStatusTimeStamp;
FOUNDATION_EXPORT NSString * const kJSONKeyResourceStatusVehicleType ;