library assembly.dart;

part 'assemblyline.dart';
part 'car.dart';
part 'operation.dart';

operation(car) {
  print('operate ${car}');
}

main() {
  //Paint operation for passenger car
  Operation<PassengerCar> paint = new Operation<PassengerCar>("paint");
  Operation<Truck> paintTruck = new Operation<Truck>("paint");
  Assembly<PassengerCar> passengerCarAssembly = new Assembly<PassengerCar>();
  passengerCarAssembly.add(new PassengerCar());
  passengerCarAssembly.add(new Truck());
  passengerCarAssembly.make(paintTruck);
}
