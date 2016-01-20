//
//  TransitDataSerializationConstants.m
//
//
//  Created by UrbanThings on 26/09/2014.
//  Copyright (c) 2016 UrbanThings All rights reserved.
//

#import "TransitDataSerializationConstants.h"


// PlacePoint
NSString * const kJSONKeyPlacePointPrimaryCode = @"primaryCode";
NSString * const kJSONKeyPlacePointUniqueIdentifier = @"uniqueIdentifier";
NSString * const kJSONKeyPlacePointLat = @"lat";
NSString * const kJSONKeyPlacePointLng = @"lng";
NSString * const kJSONKeyPlacePointName = @"name";
NSString * const kJSONKeyPlacePointLocalityName = @"localityName";
NSString * const kJSONKeyPlacePointPlacePointType = @"placePointType";
NSString * const kJSONKeyPlacePointCountry = @"country";
NSString * const kJSONKeyPlacePointImportSource = @"importSource";
// Subclass type casting
NSString * const kJSONKeyPlacePointSubClassType = @"subClassType";
NSString * const kJSONKeyPlacePointSubClassTransitStop = @"TransitStop";


// TransitStop
NSString * const kJSONKeyTransitStopAdditionalCode = @"additionalCode";
NSString * const kJSONKeyTransitStopSMSCode = @"smsCode";
NSString * const kJSONKeyTransitStopArrivalsProviders = @"arrivalsProviders";
NSString * const kJSONKeyTransitStopBearing = @"bearing";
NSString * const kJSONKeyTransitStopDirection = @"directionName";
NSString * const kJSONKeyTransitStopIsClosed = @"isClosed";
NSString * const kJSONKeyTransitStopLocalityName = @"localityName";
NSString * const kJSONKeyTransitStopProviderID = @"providerID";
NSString * const kJSONKeyTransitStopServices = @"services";
NSString * const kJSONKeyTransitStopStopIndicator = @"stopIndicator";
NSString * const kJSONKeyTransitStopStopMode = @"stopMode";
NSString * const kJSONKeyTransitStopTowards = @"towards";
NSString * const kJSONKeyTransitStopRouteHints = @"routeHints";

// TransitRouteIdentifier
NSString * const kJSONKeyTransitRouteIdentifierRouteID = @"id";
NSString * const kJSONKeyTransitRouteIdentifierDestAtStop = @"destAtStop";
NSString * const kJSONKeyTransitRouteIdentifierLineColor = @"lineColor";
NSString * const kJSONKeyTransitRouteIdentifierLineTextColor = @"lineTextColor";
NSString * const kJSONKeyTransitRouteIdentifierLineName = @"lineName";

// DirectionsRequest
NSString * const kJSONKeyDirectionsRequestAgencyCode = @"agencyCode";
NSString * const kJSONKeyDirectionsRequestArrivalTime = @"arrivalTime";
NSString * const kJSONKeyDirectionsRequestDepartureTime = @"departureTime";
NSString * const kJSONKeyDirectionsRequestJourneyTimeMode = @"journeyTimeMode";
NSString * const kJSONKeyDirectionsRequestLanguage = @"language";
NSString * const kJSONKeyDirectionsRequestMaximumJourneys = @"maximumJourneys";
NSString * const kJSONKeyDirectionsRequestPreviousResponseID = @"previousResponseID";
NSString * const kJSONKeyDirectionsRequestTravelContext= @"travelContext";

NSString * const kJSONKeyDirectionsRequestOrigin = @"origin";
NSString * const kJSONKeyDirectionsRequestDestination= @"destination";
NSString * const kJSONKeyDirectionsRequestOptions= @"options";
NSString * const kJSONKeyDirectionsRequestCustomOptions= @"customOptions";


// DirectionsRequestOptions
NSString * const kJSONKeyDirectionsRequestOptionsAcceptableVehicleTypes= @"acceptableVehicleTypes";
NSString * const kJSONKeyDirectionsRequestOptionsAccessibilityNoElevators = @"accessibilityNoElevators";
NSString * const kJSONKeyDirectionsRequestOptionsAccessibilityNoEscalators = @"accessibilityNoEscalators";
NSString * const kJSONKeyDirectionsRequestOptionsAccessibilityNoStairs = @"accessibilityNoStairs";
NSString * const kJSONKeyDirectionsRequestOptionsAccessibilityNoStepsToPlatform = @"accessibilityNoStepsToPlatform";
NSString * const kJSONKeyDirectionsRequestOptionsAccessibilityNoStepsToVehicle = @"accessibilityNoStepsToVehicle";
NSString * const kJSONKeyDirectionsRequestOptionsAvoidedLineTypes = @"avoidedLineTypes";
NSString * const kJSONKeyDirectionsRequestOptionsMaximumLegs = @"maximumLegs";
NSString * const kJSONKeyDirectionsRequestOptionsMaximumWalkingLegTime = @"maximumWalkingLegTime";
NSString * const kJSONKeyDirectionsRequestOptionsMaximumWalkingLegTimeBetweenLegs = @"maximumWalkingTimeBetweenLegs";
NSString * const kJSONKeyDirectionsRequestOptionsPlanningPrioritization = @"planningPrioritization";
NSString * const kJSONKeyDirectionsRequestOptionsWalkSpeed = @"walkSpeed";

//DirectionsRequestCustomOptions
NSString * const kJSONKeyDirectionsRequestCustomOptionsKeyValues = @"keyValues";

// DirectionsResponse
NSString * const kJSONKeyDirectionsResponseResponseID = @"responseID";
NSString * const kJSONKeyDirectionsResponsePlacePoints = @"placePoints";
NSString * const kJSONKeyDirectionsResponseJourneys = @"journeys";
NSString * const kJSONKeyDirectionsResponseStatus = @"status";
NSString * const kJSONKeyDirectionsResponseSourceName = @"sourceName";
NSString * const kJSONKeyDirectionsResponseWarnings = @"warningsHTML";
NSString * const kJSONKeyDirectionsResponseAttributions = @"attributionsHTML";

// DirectionsResponseStatus
NSString * const kJSONKeyDirectionsResponseStatusStatusCode = @"statusCode";
NSString * const kJSONKeyDirectionsResponseStatusErrorCode = @"errorCode";
NSString * const kJSONKeyDirectionsResponseStatusErrorMessage = @"errorMessage";

// Journey
NSString * const kJSONKeyDirectionsJourneyArrivalTime = @"arrivalTime";
NSString * const kJSONKeyDirectionsJourneyChangeCount = @"changeCount";
NSString * const kJSONKeyDirectionsJourneyDepartureTime = @"departureTime";
NSString * const kJSONKeyDirectionsJourneyDestinationPlacePointID = @"destinationPlacePointID";
NSString * const kJSONKeyDirectionsJourneyDuration = @"duration";
NSString * const kJSONKeyDirectionsJourneyOriginPlacePointID = @"originPlacePointID";
NSString * const kJSONKeyDirectionsJourneySummaryHTML = @"summaryHTML";
NSString * const kJSONKeyDirectionsJourneyLegs = @"legs";

// JourneyLeg
NSString * const kJSONKeyDirectionsLegObjectType = @"type";
NSString * const kJSONKeyDirectionsLegArrivalTime = @"arrivalTime";
NSString * const kJSONKeyDirectionsLegDepartureTime = @"departureTime";
NSString * const kJSONKeyDirectionsLegDestinationPlacePointID = @"destinationPlacePointID";
NSString * const kJSONKeyDirectionsLegDistance = @"distance";
NSString * const kJSONKeyDirectionsLegDuration = @"duration";
NSString * const kJSONKeyDirectionsLegOriginPlacePointID = @"originPlacePointID";
NSString * const kJSONKeyDirectionsLegPolyline = @"polyline";
NSString * const kJSONKeyDirectionsLegSteps = @"steps";
NSString * const kJSONKeyDirectionsLegSummaryHTML = @"summaryHTML";
NSString * const kJSONKeyDirectionsLegVehicleType = @"vehicleType";

// TransitJourneyLeg
NSString * const kJSONKeyDirectionsTransitLegLinkedTransitRouteInfo = @"linkedTransitRouteInfo";
NSString * const kJSONKeyDirectionsTransitLegDisruptions = @"disruptions";
NSString * const kJSONKeyDirectionsTransitLegOriginStopCall = @"originStopCall";
NSString * const kJSONKeyDirectionsTransitLegDestinationStopCall = @"desintationStopCall";
NSString * const kJSONKeyDirectionsTransitLegVehicleRTI = @"vehicleRTI";
NSString * const kJSONKeyDirectionsTransitLegLinkedTransitTripInfo = @"linkedTransitTripInfo";
NSString * const kJSONKeyDirectionsTransitLegScheduledStopCalls = @"scheduledStopCalls";
NSString * const kJSONKeyDirectionsTransitLegScheduledStopCallTimesAreAccurate = @"scheduledStopCallTimesAreAccurate";
NSString * const kJSONKeyDirectionsTransitLegReferenceStopID = @"referenceStopID";

// Disruption
NSString * const kJSONKeyDisruptionStartDate = @"startDate";
NSString * const kJSONKeyDisruptionEndDate = @"endDate";
NSString * const kJSONKeyDisruptionLocalizedAdditionalInfo = @"localizedAdditionalInfo";
NSString * const kJSONKeyDisruptionSeverity = @"severity";
NSString * const kJSONKeyDisruptionLocalizedDescription = @"localizedDescription";

// ResourceStatus
NSString * const kJSONKeyResourceStatusAvailablePlaces = @"availablePlaces";
NSString * const kJSONKeyResourceStatusPrimaryCode = @"primaryCode";
NSString * const kJSONKeyResourceStatusIsClosed = @"isClosed";
NSString * const kJSONKeyResourceStatusStatusText = @"statusText";
NSString * const kJSONKeyResourceStatusTakenPlaces = @"takenPlaces";
NSString * const kJSONKeyResourceStatusTimeStamp = @"timeStamp";
NSString * const kJSONKeyResourceStatusVehicleType = @"vehicleType";

