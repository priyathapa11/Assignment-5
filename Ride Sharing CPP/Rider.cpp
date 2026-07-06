#include "Rider.h"
#include <iostream>

using namespace std;

Rider::Rider(int id, string riderName)
{
    riderID = id;
    name = riderName;
}

void Rider::requestRide(shared_ptr<Ride> ride)
{
    requestedRides.push_back(ride);
}

void Rider::viewRides()
{
    cout << "\n===== Rider Ride History =====" << endl;

    for (auto ride : requestedRides)
    {
        ride->calculateFare();
        ride->rideDetails();
    }
}
