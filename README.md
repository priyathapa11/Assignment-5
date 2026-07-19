# Assignment 5 – Ride Sharing System

## Overview

This repository contains two implementations of a **Ride Sharing System** developed as part of an Object-Oriented Programming assignment. The project demonstrates the fundamental principles of object-oriented programming (OOP) by implementing the same system in two different programming languages:

- **C++**
- **Smalltalk (Pharo)**

The objective is to compare how object-oriented concepts are implemented across different languages while maintaining the same system functionality.

---

## Project Objectives

The Ride Sharing System demonstrates the following OOP principles:

- **Encapsulation** – Protecting object data through controlled access.
- **Inheritance** – Reusing common functionality through class hierarchies.
- **Polymorphism** – Allowing different ride types to respond differently to the same message or method call.

The system models a simplified ride-sharing application that manages rides, drivers, and riders while calculating fares based on ride type.

---

## Repository Structure

```
Assignment-5
|
Ride Sharing CPP/
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
│
├── Ride Sharing Smalltalk
│   ├── RideSharingSystem.st
│   ├── README.md
│   └── Documentation
│
└── README.md
```

---

## System Components

Both implementations include the following classes:

- **Ride** (Base Class)
- **StandardRide**
- **PremiumRide**
- **Driver**
- **Rider**

### Features

- Create standard and premium rides
- Calculate ride fares
- Display ride information
- Assign rides to drivers
- Request rides from riders
- Demonstrate runtime polymorphism

---

## Language Implementations

### C++

The C++ implementation uses:

- Classes and objects
- Private data members with public getters/setters
- Virtual functions
- Inheritance
- Runtime polymorphism using `shared_ptr<Ride>` stored in a `vector`

---

### Smalltalk (Pharo)

The Smalltalk implementation uses:

- Classes and message passing
- Instance variables with accessor methods
- Inheritance through subclassing
- Method overriding
- Runtime polymorphism using an `OrderedCollection` of `Ride` objects

---

## Development Environments

| Language | Environment |
|----------|-------------|
| C++ | Microsoft Visual Studio 2022 |
| Smalltalk | Pharo 14 |

---

## Documentation

Each implementation contains its own documentation explaining:

- System design
- Object-oriented programming concepts
- Code implementation
- Testing and execution

Detailed screenshots and execution results are included in the submitted project report.

---

## Author

**Priya Thapa**
