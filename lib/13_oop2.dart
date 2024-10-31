void oop2Main(){
  Vehicle sonata = Vehicle('Sonata', 'Hyundai', 20);
  Car k5 = Car(4, 'K5', 'Kia', 50);
  print(k5.numberOfDoors);
  print(k5.mileage);
  print(k5.getSpec());
  print(sonata.getSpec());
  Bus apolo = Bus(25,'Apolo', 'Woojin',200);
  print(apolo.getSpec());
  ElectricCar tesla = ElectricCar(750, 2, 'Y', 'Tesla', 100);
  print(tesla.getSpec());
  print('==========');
  List<Vehicle> allVehicles = [sonata, tesla, apolo, k5];
  List<Car> allCars = [k5, tesla];
  print(sonata is Vehicle); //타입체크 sonata.runtimeType == Vehicle

}

class Vehicle{
  String model;
  String manufacture;
  int mileage;
  Vehicle(this.model, this.manufacture, this.mileage);
  String getSpec(){
    return '$manufacture $model : ${mileage}km 운행';
  }
}

///자동차 문서화
class Car extends Vehicle{
  int numberOfDoors;
  Car (this.numberOfDoors, super.model, super.manufacture, super.mileage); ///super클래스 초기화

  @override
  String getSpec(){
    print(super.getSpec());
    return '문$numberOfDoors개';
  }
}

///첫번째 property는 승객수 입니다.
class Bus extends Vehicle{
  int passengerCapacity;
  ///이것은 버스 생성자
  Bus(this.passengerCapacity, super.model, super.manufacture, super.mileage);
  @override
  String getSpec(){
    print(super.getSpec());
    return '승객 $passengerCapacity명 탑승가능';
  }
}

class ElectricCar extends Car{
  int maxKw;
  ElectricCar(this.maxKw, super.numberOfDoors, super.model, super.manufacture, super.mileage);
  @override
  String getSpec(){
    print(super.getSpec());
    return '${maxKw}Kw 충전가능';
  }
}

