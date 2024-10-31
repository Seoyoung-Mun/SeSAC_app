void oopMain(){

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

class Car{
  String model;
  String manufacture;
  int mileage;
  int numberOfDoors;
  Car(this.model, this.manufacture, this.mileage, this.numberOfDoors);
  String getSpec(){
    return '$manufacture $model, 문$numberOfDoors개 : ${mileage}km 운행';
  }
}

class Bus{
  String model;
  String manufacture;
  int mileage;
  int passengerCapacity;
  Bus(this.model, this.manufacture, this.mileage, this.passengerCapacity);
  String getSpec(){
    return '$manufacture $model, 승객 $passengerCapacity명 탑승가능 : ${mileage}km 운행';
  }
}