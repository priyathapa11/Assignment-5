
#include "Ride.h"
#include <iostream>
#include <iomanip>

using namespace std;

Ride::Ride(int id, string pickup, string dropoff, double dist)
{
    rideID = id;
    pickupLocation = pickup;
    dropoffLocation = dropoff;
    distance = dist;
    fare = 0.0;
}

Ride::~Ride() {}

int Ride::getRideID() const
{
    return rideID;
}

double Ride::getDistance() const
{
    return distance;
}

void Ride::setFare(double newFare)
{
    fare = newFare;
}

double Ride::getFare() const
{
    return fare;
}

double Ride::calculateFare()
{
    fare = distance * 2.0;
    return fare;
}

void Ride::rideDetails()
{
    cout << "Ride ID: " << rideID << endl;
    cout << "Pickup: " << pickupLocation << endl;
    cout << "Dropoff: " << dropoffLocation << endl;
    cout << "Distance: " << distance << " miles" << endl;
    cout << "Fare: $" << fixed << setprecision(2) << fare << endl;
}
