abstract class Vehicle {
  String model;
  int year;
  String make;
  int _kilometers; //private의 접근은 같은 파일내에서만 가능

  Vehicle(this.model, this.year, this.make, this._kilometers);

  void move() {
    print('$make $model 이동합니다.');
  }

  void stop() {
    print('$make $model 멈춥니다.');
  }

  void addKilometers(int distance) {
    if(distance < 0) {
      print('잘못된 정보입니다.');
      return;
    }
    _kilometers += distance; //_kilometers = _kilometers + distance;
    print('$make $model, $_kilometers km 이동함');
  }

  // void displayInfo() {
  //   print('Vehicle: $make $model ($year), $_kilometers km 이동함');
  // }
void displayInfo();
}

class Car extends Vehicle {
  int numberOfDoors;
  Car(this.numberOfDoors, super.model, super.year, super.make, super._kilometers);

  @override
  void displayInfo(){
    // super.displayInfo();
    print('Vehicle: $make $model ($year), $_kilometers km 이동함. Number of Doors: $numberOfDoors');
  }
}
class Motorcycle extends Vehicle {
  bool hasTopbox;
  Motorcycle(super.model, super.year, super.make, super._kilometers, this.hasTopbox);

  @override
  void displayInfo(){
    // super.displayInfo();
    print('Vehicle: $make $model ($year), $_kilometers km 이동함. Has Topbix: $hasTopbox');
  }
}
class Airplane extends Vehicle{
  Airplane(super.model, super.year, super.make, super._kilometers );
  @override
  void displayInfo(){
    print('Vehicle: $make $model ($year), $_kilometers km 이동함');
  }
}