//20241017 with teacher
import '15_vehicle.dart';

void toutorialPacticeMain() {
  // Vehicle car = Vehicle('Sonata', 2020, 'Hyundai', 30130);ain() {
  // Vehicle car = Vehicle('Sonata', 2020, 'Hyundai', 30130);
  // car.move();
  // car.stop();
  // car.addKilometers(30);
  // car.displayInfo();

  // ===========
  Car car = Car(4, 'Sonata', 2020, 'Hyundai', 30130);
  car.move();
  car.stop();
  car.addKilometers(40);
  car.displayInfo();
  
  print('====구 분====');
  Motorcycle motorcycle = Motorcycle('CBR', 2015, 'Honda', 50000, true);
  motorcycle.move();
  motorcycle.stop();
  motorcycle.addKilometers(20);
  motorcycle.displayInfo();
  
  print('====구 분====');
  Airplane airplane = Airplane('Boeing707', 2020, 'ABC', 200000000);
  airplane.move();
  airplane.stop();
  airplane.displayInfo();
}



