#include "PremiumRide.h"
#include <iostream>

using namespace std;

PremiumRide::PremiumRide(int id, string pickup, string dropoff, double dist)
    : Ride(id, pickup, dropoff, dist)
{
}

double PremiumRide::calculateFare()
{
    double fare = getDistance() * 3.5;
    setFare(fare);
    return fare;
}

void PremiumRide::rideDetails()
{
    cout << "\n--- Premium Ride ---" << endl;
    Ride::rideDetails();
}
