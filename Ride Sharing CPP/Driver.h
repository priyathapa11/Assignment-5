#ifndef DRIVER_H
#define DRIVER_H

#include <vector>
#include <memory>
#include <string>
#include "Ride.h"

using namespace std;

class Driver
{
private:
    int driverID;
    string name;
    double rating;
    vector<shared_ptr<Ride>> assignedRides;

public:
    Driver(int id, string name, double rating);

    void addRide(shared_ptr<Ride> ride);
    void getDriverInfo();
};

#endif
