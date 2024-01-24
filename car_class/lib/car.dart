part of assembly.dart;

abstract class Car {
  //Color
  String color = '';
}

//Passenger Car
class PassengerCar extends Car {
  String toString() => "PassengerCar";
}

//Truck
class Truck extends Car {
  String toString() => "Truck";
}
