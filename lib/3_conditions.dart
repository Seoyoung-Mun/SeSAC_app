import 'dart:io';

void conditionsMain(){
  // print("--실습1--");
  // stdout.write("첫 번째 값 입력: ");
  // int intInput1 = int.parse(stdin.readLineSync()!);
  // // print("첫 번째 값 입력: $intInput1");
  // stdout.write("두 번째 값 입력: ");
  // int intInput2 = int.parse(stdin.readLineSync()!);
  // // print("두 번째 값 입력: $intInput2");
  //
  // if(intInput1 < intInput2) {
  //   print("$intInput1 이 $intInput2보다 작다 ");
  // } else if (intInput1 > intInput2){
  //   print("$intInput1 이 $intInput2보다 크다 ");
  // } else {
  //   print("$intInput1 와 $intInput2 는 같다");
  // }

  // print("--실습2--");
  // stdout.write("숫자를 입력하세요: ");
  // int num = int.parse(stdin.readLineSync()!);
  //
  // if(num > 0){
  //   print("$num 은 양수입니다.");
  // } else if(num < 0){
  //   print("$num 은 음수입니다.");
  // } else {
  //   print("$num 은 0입니다.");
  // }

  // print("--실습3--");
  // stdout.write("문자를 입력하세요: ");
  // String A = stdin.readLineSync()!;
  // int Alength = A.length;
  //
  //
  // if(Alength < 10) {
  //   print("$A 의 길이는 10보다 짧습니다.");
  // } else if(Alength == 10){
  //   print("$A 의 길이는 10과 같습니다.");
  // }else {
  //   print("$A 의 길이는 10보다 깁니다.");
  // }

  // print("--실습4--");
  // stdout.write("숫자를 입력하세요: ");
  // int number = int.parse(stdin.readLineSync()!);
  //
  // if(number % 2 == 0){
  //   print("$number은 짝수이다.");
  // } else{
  //   print("$number은 홀수입니다.");
  // }

  // print("--실습5--");
  // stdout.write("점수를 입력하세요: ");
  // int score = int.parse(stdin.readLineSync()!);
  //
  //
  // // if(score >= 90){
  // //   print("당신의 학점은 A+입니다.");
  // // } else if(score >= 80){
  // //   print("당신의 학점은 A입니다.");
  // // } else if(score >= 70){
  // //   print("당신의 학점은 B입니다.");
  // // } else if(score >= 60){
  // //   print("당신의 학점은 C입니다.");
  // // } else if(score >= 50){
  // //   print("당신의 학점은 D입니다.");
  // // } else {
  // //   print("당신의 학점은 F입니다.");
  // // }
  // String grade;
  // if(score >= 90){
  //   grade = "A+";
  // } else if(score >= 80){
  //   grade = "A";
  // } else if(score >= 70){
  //   grade = "B";
  // } else if(score >= 60){
  //   grade = "C";
  // } else if(score >= 50){
  //   grade = "D";
  // } else {
  //   grade = "F";
  // }
  // print("당신의 학점은 $grade입니다.");

  print("--실습6--");
  stdout.write("계산식을 입력하세요: ");
  String A = stdin.readLineSync()!;
  var result = 0;

  if(A.contains('+')){
    List numbers = A.split('+');
    int num1 = int.parse(numbers[0]);
    int num2 = int.parse(numbers[1]);
    result = num1 + num2;
    print("두 값의 합은 $result 입니다.");
  } else if(A.contains('-')){
    List numbers = A.split('-');
    int num1 = int.parse(numbers[0]);
    int num2 = int.parse(numbers[1]);
    result = num1 - num2;
    print("두 값의 차는 $result 입니다.");
  }else if(A.contains('%')){
    List numbers = A.split('%');
    int num1 = int.parse(numbers[0]);
    int num2 = int.parse(numbers[1]);
    result = num1 % num2;
    print("나머지는 $result 입니다.");
  }else if(A.contains('*')){
    List numbers = A.split('*');
    int num1 = int.parse(numbers[0]);
    int num2 = int.parse(numbers[1]);
    result = num1 * num2;
    print("곱은 $result 입니다.");
  }else if(A.contains('/')){
    List numbers = A.split('/');
    int num1 = int.parse(numbers[0]);
    int num2 = int.parse(numbers[1]);
    result = (num1 ~/ num2);
    print("나눈 몫은 $result 입니다.");
  }else{
    print("잘못된 계산 식을 입력했습니다.");
  }
}
