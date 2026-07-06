# Ride Sharing System

## Overview

This project is a simple object-oriented Ride Sharing System developed in **C++**. It demonstrates the core principles of Object-Oriented Programming (OOP), including **Encapsulation**, **Inheritance**, and **Polymorphism**.

The application models a ride-sharing platform where riders can request rides, drivers can complete rides, and different ride types calculate fares differently.

---

## Features

- Base `Ride` class containing ride information
- `StandardRide` and `PremiumRide` subclasses with different fare calculations
- `Driver` class to manage completed rides
- `Rider` class to manage requested rides
- Polymorphic fare calculation using a collection of `Ride` objects
- Console-based demonstration of the system

---

## Object-Oriented Principles Demonstrated

### Encapsulation
- Class data members are declared as `private`.
- Public getter and setter methods provide controlled access to class data.
- The `Driver` and `Rider` classes manage ride collections through public methods.

### Inheritance
- `StandardRide` and `PremiumRide` inherit from the base `Ride` class.
- Derived classes reuse common ride properties while implementing their own fare calculations.

### Polymorphism
- The `calculateFare()` and `rideDetails()` methods are declared `virtual` in the `Ride` class.
- Both derived classes override these methods.
- A collection of `Ride` pointers is used to invoke overridden methods dynamically.

---

## Project Structure

```
RideSharingSystem/
│
├── Driver.cpp
├── Driver.h
├── PremiumRide.cpp
├── PremiumRide.h
├── Ride.cpp
├── Ride.h
├── Rider.cpp
├── Rider.h
├── StandardRide.cpp
├── StandardRide.h
├── main.cpp
└── README.md
```

---

## How to Build and Run

### Using Visual Studio

1. Open the solution in Visual Studio.
2. Build the project (**Build → Build Solution**).
3. Run the application using **Ctrl + F5**.

### Using g++

```bash
g++ *.cpp -o RideSharingSystem
./RideSharingSystem
```

---

## Sample Output

The application demonstrates:

- Creation of different ride types
- Fare calculation for each ride
- Rider ride history
- Driver completed rides
- Polymorphic method invocation

---

## Author

**Priya Thapa**

MS Computer Science
