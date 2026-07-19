| standardRide1 standardRide2 premiumRide1 premiumRide2 rides driver rider |

standardRide1 := StandardRide new.
standardRide1
    rideID: 1
    pickup: 'Des Moines Airport'
    dropoff: 'Downtown Des Moines'
    distance: 8.

standardRide2 := StandardRide new.
standardRide2
    rideID: 2
    pickup: 'West Des Moines'
    dropoff: 'Windsor Heights'
    distance: 6.

premiumRide1 := PremiumRide new.
premiumRide1
    rideID: 3
    pickup: 'Ankeny'
    dropoff: 'Ames'
    distance: 25.

premiumRide2 := PremiumRide new.
premiumRide2
    rideID: 4
    pickup: 'Urbandale'
    dropoff: 'Des Moines Airport'
    distance: 12.

rides := OrderedCollection
    with: standardRide1
    with: premiumRide1
    with: standardRide2
    with: premiumRide2.

driver := Driver new.
driver
    driverID: 101
    name: 'John Smith'
    rating: 4.9.

driver assignRide: standardRide1.
driver assignRide: premiumRide1.

rider := Rider new.
rider
    riderID: 201
    name: 'Alice Johnson'.

rider requestRide: standardRide1.
rider requestRide: premiumRide1.

Transcript clear.

rides do: [ :ride |
    ride calculateFare.
    Transcript
        show: ride rideDetails;
        cr;
        cr.
].

Transcript cr.
Transcript show: '===== Driver ====='; cr.
Transcript show: driver driverDetails; cr.

Transcript cr.
Transcript show: '===== Rider ====='; cr.
Transcript show: rider riderDetails; cr.
