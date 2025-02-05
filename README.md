# 🚀 Deep Care Case Study

## Getting Started
A Flutter project with Clean Architecture using Flutter Bloc State Management with
combination of Repository pattern.

### Answers

##  Which patterns/libraries did you use and why?
      - I used Flutter BLoC for state management because it provides a structured and scalable way to manage application state, ensuring a clear separation of concerns between the UI and business logic. It also simplifies event-driven architecture and makes the app more testable and maintainable.
       For local data storage, I used SharedPreferences to persist small amounts of key-value data, such as prime number preferences with Singleton design pattern. This is efficient for lightweight storage needs without requiring a full database solution.
       Additionally, I implemented the Repository Pattern in my architecture to maintain a clean separation between the data layer and business logic. This pattern abstracts data sources , improving modularity and making it easier to switch data sources without affecting the application logic. 

## What assumptions did you make that influenced your design?
     -  I assumed the app would scale over time, so I used Clean Architecture with separate Presentation, Domain, Data, and Core layers to ensure modularity and maintainability. To keep business logic independent and testable, I implemented Dependency Injection and the Repository Pattern, allowing flexibility in managing multiple data sources. Flutter BLoC was chosen for state management to handle asynchronous operations efficiently. Additionally, I assumed lightweight local storage would be needed, so I integrated SharedPreferences for caching small data. These assumptions ensured a scalable, testable, and well-structured application. 


## Product Features
 - The main screen shows a clock.
 - Meanwhile, the app should every 10 seconds call an API that returns a random number:
    http://www.randomnumberapi.com/api/v1.0/random
 - If the number returned is a prime number, the app changes to a screen that notifies the user.
 - Where X it’s the prime number received from the API and YY is the time elapsed since the last prime
    number.
 - If the app is closed, next time it is open it should correctly calculate the time elapsed since the last
   prime number.

## Basic
This is the whole idea of application's architecture.
This architecture is base on clean architecture by separating each layers
into separated `flutter packages`. In this way different units
in different layers will interact with each other in the most abstract way
and layers are not aware about what is happening inside other layers. By separating layers and units, we will achieve
more `Separation of Concern`.

## Manage imports
export `HomeBloc` inside the `presentation` layer.
inside `presentation.dart` we have to export it:

## Naming Convention
- name types using UpperCamelCase :
  class SliderMenu { ... }
- name extensions using UpperCamelCase : `extension ContextExtensions on BuildContext`
- name packages, directories, and source files using
  lowercase_with_underscores : `data`, `app_dependency_component.dart`
- using lowerCamelCase for constant names : `const defaultTimeout = 1000;`

### Layers

## Presentation Module
This module will interact with **User** and will receive any events from user. e.g : Updating number by button.

## Domain Module
The main idea of **Domain** module is handling `Business rules` and connect user interactions with logic of
application.
This module should be as pure as possible and should have the least dependency to any implementation or libraries.

## Data Module
In this layer we should handle data and data flow of application. managing `repositories implementation` 
inside that module to make connection or switch connection between remote or local source according
to our requirement.

## Core Module
In this layer we manage those functionalities those are commonly used through out all Application.



