import 'dart:io'; //입출력 관련 라이브러리 불러오기

void variablesMain(){
  // stdout.write('Enter your name: ');
  // String? name = stdin.readLineSync();
  // //readLineSync()는 입력 받을 때까지 프로그램 실행을 멈추기때문에 동기적으로 동작.
  //
  // print("--실습1--");
  // stdout.write("이름을 입력하세요: ");
  // String name1 = stdin.readLineSync()!;
  // // String name1 = name!;
  // print('입력하신 이름은 $name1입니다.');

  // print("--실습2--");
  // int age = 21;
  // String name = 'MinJae';
  // String phone = '010-1234-5678';
  //
  // print("나이: $age, 이름: $name, 연락처: $phone");

  // print("--실습3--");
  // stdout.write("성을 입력하세요: ");
  // String lastName = stdin.readLineSync()!;
  // stdout.write("이름을 입력하세요: ");
  // String firstName = stdin.readLineSync()!;
  // print("$firstName-$lastName");

  // print("--실습4--");
  // print(
  //   '''반짝 반짝 작은별,
  //    넌 어떤 존재일까!
  //      저 높은 하늘 속에
  //      마치 다이아같아.
  //   '''
  // );
  // print('반짝 반짝 작은별 \n\t넌 어떤 존재일까! \n\t\t저 높은 하늘 속에\n\t\t마치 다이아같아.');

  // print("--실습5--");
  // stdout.write("첫 번째 값을 입력하세요: ");
  // int num1 = int.parse(stdin.readLineSync()!);
  // stdout.write("두 번째 값을 입력하세요: ");
  // int num2 = int.parse(stdin.readLineSync()!);
  // int num3 = num1+num2;
  // print("첫번째값: $num1, 두번째값: $num2, 합: $num3");

  // print("--실습6--");
  // stdout.write("정수 값을 입력하세요: ");
  // int intNum = int.parse(stdin.readLineSync()!);
  // stdout.write("소숫점 값을 입력하세요: ");
  // double dobNum = double.parse(stdin.readLineSync()!);
  // double x = intNum * dobNum;
  // print("곱하기 결과: $x");

  // print("--실습7--");
  // stdout.write("첫 번째 값: ");
  // int num1 = int.parse(stdin.readLineSync()!);
  // stdout.write("두 번째 값: ");
  // int num2 = int.parse(stdin.readLineSync()!);
  // int result = num1 ~/ num2;
  // print("첫 번째 값: $num1, 두 번째 값: $num2, 몫: $result");

  // print("--실습8--");
  // stdout.write("첫 번째 값: ");
  // int num1 = int.parse(stdin.readLineSync()!);
  // stdout.write("두 번째 값: ");
  // int num2 = int.parse(stdin.readLineSync()!);
  // int result = num1 % num2;
  // print("첫 번째 값: $num1, 두 번째 값: $num2, 몫: $result");

  // print("--실습9--");
  // bool? isMine = false;
  // print(isMine);
  // isMine = null;
  // print(isMine);

  print("--실습10--");
  var inputName = '';
  stdout.write("이름을 입력하세요: ");
  inputName = stdin.readLineSync()!;
  String myName = inputName;
  print(myName);

}