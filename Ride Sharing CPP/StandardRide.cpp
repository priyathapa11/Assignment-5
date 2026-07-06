#include "StandardRide.h"
#include <iostream>

using namespace std;

StandardRide::StandardRide(int id, string pickup, string dropoff, double dist)
    : Ride(id, pickup, dropoff, dist)
{
}

double StandardRide::calculateFare()
{
    double fare = getDistance() * 2.0;
    setFare(fare);
    return fare;
}

void StandardRide::rideDetails()
{
    cout << "\n--- Standard Ride ---" << endl;
    Ride::rideDetails();
}
