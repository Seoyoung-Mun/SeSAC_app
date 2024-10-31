import 'dart:async';
import 'dart:io';

//실습1
Future<String> sayHello() async {
  await Future.delayed(Duration(seconds:2));
  return "Hello, World!";
}
//실습2 오답
// Future<int> doubleMaker() async {
//   stdout.write("숫자를 입력해 주세요: ");
//   int receivedNo = int.parse(stdin.readLineSync()!);
//   await Future.delayed(Duration(seconds:2));
//   return (receivedNo * 2);
// }
//실습2 정답
Future<int> doubleMaker(int number) async{
  await Future.delayed(Duration(seconds:2));
  return number * 2;
}

//실습3 - 정답지에는 2개의 Future함수로 정의/실행
Future<void> answer3() async {
  await Future.delayed(Duration(seconds:2));
  print("First Task Complete");
  await Future.delayed(Duration(seconds:3));
  print("Second Task Complete");
}

//실습8 stream
Stream<String> helloStream() async*{
  for (int i = 0; i < 3; i++){
    await Future.delayed(Duration(seconds:1));
    yield "Hello, stream!";
  }
}
Future<void> concrrencyMain() async {
  //main을 비동기 함수로 만든 이유는 await for을 쓰기 위해.
  await for (String value in helloStream()) {
    print(value);
  }
}

// void concrrencyMain() async {

  //실습1
  // String sayHi = await sayHello();
  // print(sayHi);

  //실습2 오답
  // print(doubleMaker());
  //실습2 정답
  // stdout.write("숫자를 입력 해 주세요: ");
  // int number = int.parse(stdin.readLineSync()!);
  // int answer2 = await doubleMaker(number);
  // print(answer2);

  //실습3 - 정답지와는 다름 그러나 작동은 정상
  // await answer3();
// }