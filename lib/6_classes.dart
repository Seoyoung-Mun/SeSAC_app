import 'dart:io';

void classMain(){
  //실습1
  // Home home = Home();
  //
  // home.name = '서울시청';
  // home.address = '서울시 중구 세종대로';
  // home.numberOfRooms = 15;
  //
  // home.display();

  //실습2
  // Car sedan = Car('sedan', 'blue', 4);
  // sedan.display();
  //
  // Car suv = Car('suv', 'red', 4);
  // suv.display();

  //실습3
  // Car sedan = Car.blueSedan(4);
  // sedan.display();
  //
  // Car suv = Car('suv', 'red', 4);
  // suv.display();

  //실습4
  Calculator calculator = Calculator();
  while (true) {
    stdout.write("계산식: ");
    String inputString = stdin.readLineSync()!;
    if (inputString == 'exit'){
      break;
    };


  List<String> splitInput = [];
  splitInput = inputString.split('');
  
  calculator.A = int.parse(splitInput[0]);
  calculator.B = int.parse(splitInput[2]);
  calculator.operator = splitInput[1];

  calculator.calculate();
  }
}

class Calculator{
  int A = 0;
  int B = 0;
  String? operator;

  void calculate(){
    int result = 0;
    if(operator == '+'){
      result = add();
    } else if(operator == '-'){
      result = sub();
    } else if(operator == '*'){
      result = mul();
    } else if(operator == '/'){
      result = div();
    } else {
      print("잘못된 수식입니다.");
    }

    print('계산결과: $result');

  }

  int add(){
    return A + B;
  }
  int sub(){
    return A - B;
  }
  int mul(){
    return A * B;
  }
  int div(){
    return A ~/ B;
  }
}
class Car { //실습 2,3
  String? name;
  String? color;
  int? numberOfSeats;

  Car(this.name, this.color, this.numberOfSeats);

  Car.blueSedan(this.numberOfSeats){
    name = 'sedan';
    color = 'blue';
  }

  void display(){
    print('name: $name');
    print('color: $color');
    print('numberOfSeats: $numberOfSeats');
  }
}

class Home{ //실습 1
  String? name;
  String? address;
  int? numberOfRooms;

  void display(){
    print('name: $name');
    print('address: $address');
    print('numberOfRooms: $numberOfRooms');
  }
}



