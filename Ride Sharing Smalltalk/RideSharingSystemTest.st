| standardRide1 standardRide2 premiumRide1 premiumRide2 rides driver rider |

standardRide1 := StandardRide
    rideID: 1
    pickup: 'Des Moines Airport'
    dropoff: 'Downtown Des Moines'
    distance: 8.

standardRide2 := StandardRide
    rideID: 2
    pickup: 'West Des Moines'
    dropoff: 'Windsor Heights'
    distance: 6.

premiumRide1 := PremiumRide
    rideID: 3
    pickup: 'Ankeny'
    dropoff: 'Ames'
    distance: 25.

premiumRide2 := PremiumRide
    rideID: 4
    pickup: 'Urbandale'
    dropoff: 'Des Moines Airport'
    distance: 12.

"Polymorphism: the same messages are sent to different Ride subclasses."
rides := OrderedCollection
    with: standardRide1
    with: premiumRide1
    with: standardRide2
    with: premiumRide2.

Transcript clear.
Transcript
    show: 'POLYMORPHIC RIDE LIST';
    cr;
    show: '==============================';
    cr.

rides do: [ :eachRide |
    Transcript
        show: eachRide rideDetails;
        cr;
        show: '------------------------------';
        cr ].

driver := Driver
    driverID: 101
    name: 'Michael Brown'
    rating: 4.9.

driver addRide: standardRide1.
driver addRide: premiumRide1.

Transcript
    cr;
    show: 'DRIVER INFORMATION';
    cr;
    show: '==============================';
    cr;
    show: driver getDriverInfo;
    cr;
    cr;
    show: driver viewAssignedRides;
    cr.

rider := Rider
    riderID: 201
    name: 'Emily Davis'.

rider requestRide: standardRide1.
rider requestRide: premiumRide1.
rider requestRide: standardRide2.

Transcript
    cr;
    show: 'RIDER INFORMATION';
    cr;
    show: '==============================';
    cr;
    show: rider getRiderInfo;
    cr;
    cr;
    show: rider viewRides;
    cr.
