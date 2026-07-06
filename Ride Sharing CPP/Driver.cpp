#include "Driver.h"
#include <iostream>

using namespace std;

Driver::Driver(int id, string driverName, double driverRating)
{
    driverID = id;
    name = driverName;
    rating = driverRating;
}

void Driver::addRide(shared_ptr<Ride> ride)
{
    assignedRides.push_back(ride);
}

void Driver::getDriverInfo()
{
    cout << "\n===== Driver Information =====" << endl;
    cout << "Driver ID: " << driverID << endl;
    cout << "Name: " << name << endl;
    cout << "Rating: " << rating << endl;

    for (auto ride : assignedRides)
    {
        ride->calculateFare();
        ride->rideDetails();
    }
}
