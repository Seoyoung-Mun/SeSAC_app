import 'dart:io';

void practiceMain (List<String> arguments) {
  print("Hello World!"); // 출력명령

  //값을 받고 출력하기1
  print("값을 입력하세요 : ");
  var inputString = stdin.readLineSync();
  print("입력된 값: $inputString");

  //값을 받고 출력하기2
  stdout.write("값을 입력하세요 : ");
  var inputString2 = stdin.readLineSync();
  print('입력된 값: $inputString2');
}