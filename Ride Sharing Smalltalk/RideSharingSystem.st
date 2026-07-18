'Ride Sharing System - Pharo Smalltalk implementation'
'File this code into Pharo using Tools > File Browser, or paste the class and method definitions into the System Browser.'

Object subclass: #Ride
    instanceVariableNames: 'rideID pickupLocation dropoffLocation distance fare'
    classVariableNames: ''
    package: 'RideSharingSystem'!

Ride subclass: #StandardRide
    instanceVariableNames: ''
    classVariableNames: ''
    package: 'RideSharingSystem'!

Ride subclass: #PremiumRide
    instanceVariableNames: ''
    classVariableNames: ''
    package: 'RideSharingSystem'!

Object subclass: #Driver
    instanceVariableNames: 'driverID name rating assignedRides'
    classVariableNames: ''
    package: 'RideSharingSystem'!

Object subclass: #Rider
    instanceVariableNames: 'riderID name requestedRides'
    classVariableNames: ''
    package: 'RideSharingSystem'!


!Ride class methodsFor: 'instance creation'!
rideID: anID pickup: aPickupLocation dropoff: aDropoffLocation distance: aDistance
    ^ self new
        rideID: anID;
        pickupLocation: aPickupLocation;
        dropoffLocation: aDropoffLocation;
        distance: aDistance;
        yourself
!


!Ride methodsFor: 'initialization'!
initialize
    super initialize.
    rideID := 0.
    pickupLocation := ''.
    dropoffLocation := ''.
    distance := 0.
    fare := 0
!


!Ride methodsFor: 'accessing'!
rideID
    ^ rideID
!

rideID: anID
    rideID := anID
!

pickupLocation
    ^ pickupLocation
!

pickupLocation: aLocation
    pickupLocation := aLocation
!

dropoffLocation
    ^ dropoffLocation
!

dropoffLocation: aLocation
    dropoffLocation := aLocation
!

distance
    ^ distance
!

distance: aDistance
    aDistance < 0
        ifTrue: [ self error: 'Distance cannot be negative' ].
    distance := aDistance
!

fare
    ^ fare
!


!Ride methodsFor: 'calculating'!
calculateFare
    self subclassResponsibility
!


!Ride methodsFor: 'displaying'!
rideDetails
    self calculateFare.

    ^ String streamContents: [ :stream |
        stream
            nextPutAll: 'Ride ID: ';
            nextPutAll: rideID asString;
            cr;
            nextPutAll: 'Ride Type: ';
            nextPutAll: self class name;
            cr;
            nextPutAll: 'Pickup Location: ';
            nextPutAll: pickupLocation;
            cr;
            nextPutAll: 'Drop-off Location: ';
            nextPutAll: dropoffLocation;
            cr;
            nextPutAll: 'Distance: ';
            nextPutAll: distance asString;
            nextPutAll: ' miles';
            cr;
            nextPutAll: 'Fare: $';
            nextPutAll: fare asString ]
!


!StandardRide methodsFor: 'calculating'!
calculateFare
    fare := 2.00 + (distance * 1.50).
    ^ fare
!


!PremiumRide methodsFor: 'calculating'!
calculateFare
    fare := 5.00 + (distance * 3.00) + 4.00.
    ^ fare
!


!Driver class methodsFor: 'instance creation'!
driverID: anID name: aName rating: aRating
    ^ self new
        driverID: anID;
        name: aName;
        rating: aRating;
        yourself
!


!Driver methodsFor: 'initialization'!
initialize
    super initialize.
    driverID := 0.
    name := ''.
    rating := 0.
    assignedRides := OrderedCollection new
!


!Driver methodsFor: 'accessing'!
driverID
    ^ driverID
!

driverID: anID
    driverID := anID
!

name
    ^ name
!

name: aName
    name := aName
!

rating
    ^ rating
!

rating: aRating
    (aRating < 0 or: [ aRating > 5 ])
        ifTrue: [ self error: 'Rating must be between 0 and 5' ].
    rating := aRating
!

assignedRides
    ^ assignedRides copy
!


!Driver methodsFor: 'ride management'!
addRide: aRide
    (aRide isKindOf: Ride)
        ifFalse: [ self error: 'Only Ride objects can be assigned to a driver' ].
    assignedRides add: aRide
!

numberOfCompletedRides
    ^ assignedRides size
!

totalEarnings
    ^ assignedRides
        inject: 0
        into: [ :total :eachRide | total + eachRide calculateFare ]
!


!Driver methodsFor: 'displaying'!
getDriverInfo
    ^ String streamContents: [ :stream |
        stream
            nextPutAll: 'Driver ID: ';
            nextPutAll: driverID asString;
            cr;
            nextPutAll: 'Driver Name: ';
            nextPutAll: name;
            cr;
            nextPutAll: 'Rating: ';
            nextPutAll: rating asString;
            cr;
            nextPutAll: 'Completed Rides: ';
            nextPutAll: assignedRides size asString;
            cr;
            nextPutAll: 'Total Earnings: $';
            nextPutAll: self totalEarnings asString ]
!

viewAssignedRides
    assignedRides isEmpty
        ifTrue: [ ^ 'No rides have been assigned to this driver.' ].

    ^ String streamContents: [ :stream |
        assignedRides doWithIndex: [ :eachRide :index |
            stream
                nextPutAll: 'Assigned Ride ';
                nextPutAll: index asString;
                cr;
                nextPutAll: eachRide rideDetails;
                cr;
                nextPutAll: '------------------------------';
                cr ] ]
!


!Rider class methodsFor: 'instance creation'!
riderID: anID name: aName
    ^ self new
        riderID: anID;
        name: aName;
        yourself
!


!Rider methodsFor: 'initialization'!
initialize
    super initialize.
    riderID := 0.
    name := ''.
    requestedRides := OrderedCollection new
!


!Rider methodsFor: 'accessing'!
riderID
    ^ riderID
!

riderID: anID
    riderID := anID
!

name
    ^ name
!

name: aName
    name := aName
!

requestedRides
    ^ requestedRides copy
!


!Rider methodsFor: 'ride management'!
requestRide: aRide
    (aRide isKindOf: Ride)
        ifFalse: [ self error: 'Only Ride objects can be requested' ].
    requestedRides add: aRide
!

numberOfRequestedRides
    ^ requestedRides size
!

totalAmountSpent
    ^ requestedRides
        inject: 0
        into: [ :total :eachRide | total + eachRide calculateFare ]
!


!Rider methodsFor: 'displaying'!
getRiderInfo
    ^ String streamContents: [ :stream |
        stream
            nextPutAll: 'Rider ID: ';
            nextPutAll: riderID asString;
            cr;
            nextPutAll: 'Rider Name: ';
            nextPutAll: name;
            cr;
            nextPutAll: 'Requested Rides: ';
            nextPutAll: requestedRides size asString;
            cr;
            nextPutAll: 'Total Amount Spent: $';
            nextPutAll: self totalAmountSpent asString ]
!

viewRides
    requestedRides isEmpty
        ifTrue: [ ^ 'This rider has not requested any rides.' ].

    ^ String streamContents: [ :stream |
        requestedRides doWithIndex: [ :eachRide :index |
            stream
                nextPutAll: 'Requested Ride ';
                nextPutAll: index asString;
                cr;
                nextPutAll: eachRide rideDetails;
                cr;
                nextPutAll: '------------------------------';
                cr ] ]
!
