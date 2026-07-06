
#ifndef RIDE_H
#define RIDE_H

#include <string>
using namespace std;

class Ride {
private:
    int rideID;
    string pickupLocation;
    string dropoffLocation;
    double distance;
    double fare;

public:
    Ride(int id, string pickup, string dropoff, double dist);
    virtual ~Ride();

    int getRideID() const;
    double getDistance() const;

    void setFare(double fare);
    double getFare() const;

    virtual double calculateFare();
    virtual void rideDetails();
};

#endif
