//OOP Level up
abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString(){
    return "I'm a $runtimeType";
  }
}
class Dog extends Animal{
  @override
  void eat() {

  }

  @override
  void move() {

  }
}

void oop3Main(){

}

abstract class DataRepository {
  double? fetchTemperature(String city);
}
