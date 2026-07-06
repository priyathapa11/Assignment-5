#include <iostream>
#include <vector>
#include <memory>

#include "StandardRide.h"
#include "PremiumRide.h"
#include "Driver.h"
#include "Rider.h"

using namespace std;

int main()
{
    shared_ptr<Ride> ride1 =
        make_shared<StandardRide>(101, "Downtown", "Airport", 12.5);

    shared_ptr<Ride> ride2 =
        make_shared<PremiumRide>(102, "University", "Hotel", 8.0);

    shared_ptr<Ride> ride3 =
        make_shared<StandardRide>(103, "Mall", "Train Station", 5.5);

    Driver driver(1, "John Smith", 4.9);
    Rider rider(101, "Alice");

    rider.requestRide(ride1);
    rider.requestRide(ride2);
    rider.requestRide(ride3);

    driver.addRide(ride1);
    driver.addRide(ride2);
    driver.addRide(ride3);

    vector<shared_ptr<Ride>> rides = {ride1, ride2, ride3};

    cout << "===== Polymorphism Demonstration =====\n";

    for (auto ride : rides)
    {
        ride->calculateFare();
        ride->rideDetails();
    }

    rider.viewRides();

    driver.getDriverInfo();

    return 0;
}
