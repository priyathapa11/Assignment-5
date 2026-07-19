# Ride Sharing System – Smalltalk (Pharo)

## Project Overview

This project implements a simple Ride Sharing System using **Smalltalk** in the **Pharo** development environment. The primary objective of the project is to demonstrate the core principles of object-oriented programming (OOP), including **encapsulation**, **inheritance**, and **polymorphism**, through a real-world application.

The system models a ride-sharing service with different ride types, drivers, and riders. It calculates fares based on ride type, manages ride assignments and requests, and demonstrates dynamic message dispatch through polymorphism.

---

## Project Structure

The implementation consists of the following classes:

- **Ride** – Base class containing common ride information and behavior.
- **StandardRide** – Inherits from `Ride` and calculates fares using the standard pricing model.
- **PremiumRide** – Inherits from `Ride` and calculates fares using the premium pricing model.
- **Driver** – Represents a driver and maintains assigned rides.
- **Rider** – Represents a rider and maintains requested rides.

---

## Object-Oriented Programming Concepts

### Encapsulation

The system stores ride, driver, and rider information using instance variables and provides controlled access through accessor methods. This protects the internal state of each object while allowing interaction through message passing.

### Inheritance

The `StandardRide` and `PremiumRide` classes inherit common attributes and behaviors from the `Ride` superclass. This eliminates code duplication while allowing each subclass to provide its own fare calculation.

### Polymorphism

Both ride subclasses implement their own version of the `calculateFare` method. During execution, ride objects are stored together in an `OrderedCollection`, and the same messages (`calculateFare` and `rideDetails`) are sent to every ride object. Each object responds according to its actual class, demonstrating runtime polymorphism.

---

## Running the Project

1. Open **Pharo**.
2. Import the provided `RideSharingSystem.st` source file using the **File In** option.
3. Open a Playground.
4. Execute the provided test code to create ride objects, drivers, and riders.
5. View the program output in the **Transcript** window.

---

## Source Code

The project source code is provided as a **Pharo FileOut** (`RideSharingSystem.st`). This is the standard export format used by Pharo for sharing Smalltalk source code and can be imported directly into another Pharo image.

---

## Development Environment

- **Language:** Smalltalk
- **IDE:** Pharo 14
- **Programming Paradigm:** Object-Oriented Programming

---

## References

1. Goldberg A, Robson D. *Smalltalk-80: The Language and Its Implementation*. Reading (MA): Addison-Wesley; 1983.

2. Ducasse S, Chloupis G. *Pharo by Example*. Lille (France): Square Bracket Associates; 2022.
