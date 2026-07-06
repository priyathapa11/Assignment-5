#ifndef RIDER_H
#define RIDER_H

#include <vector>
#include <memory>
#include <string>
#include "Ride.h"

using namespace std;

class Rider
{
private:
    int riderID;
    string name;
    vector<shared_ptr<Ride>> requestedRides;

public:
    Rider(int id, string name);

    void requestRide(shared_ptr<Ride> ride);
    void viewRides();
};

#endif
