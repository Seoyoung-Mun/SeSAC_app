import 'dart:io';
import 'dart:math'; //math package

void functionMain(){
  // 강사님과 함께 실습 9
  // stdout.write("계산식 :");
  // String AA = stdin.readLineSync()!;
  //
  // List<String> splitList = AA.split("");
  // String operator = splitList[1];
  // String leftValue = splitList[0];
  // String rightValue = splitList[2];
  //
  // calculator(leftValue: int.parse(leftValue),operator: operator, rightValue: int.parse(rightValue));

  // 실습 1
  // stdout.write("첫 번째 값: ");
  // int input1 = int.parse(stdin.readLineSync()!);
  // stdout.write("두 번째 값: ");
  // int input2 = int.parse(stdin.readLineSync()!);
  // int addResult = add1(input1,input2);
  // print("두 값의 합: $addResult");

  //실습 2
  // stdout.write("문자열 입력: ");
  // String inputStr = stdin.readLineSync()!;
  // String returnStr = reverse(inputStr);
  // print("반전된 문자열: $returnStr");

  // 실습3
  stdout.write("UpperCamelCase String입력: ");
  String upperCamel = stdin.readLineSync()!;
  String reverseString = capital(upperCamel);
  print("변환된 문자열: $reverseString");

  //실습4


}
// 강사님과 함께 실습 9
void calculator({
  required int leftValue,
  required String operator,
  required int rightValue,
}){
  int? result;
  switch(operator){
    case '+':
      result = add(leftValue, rightValue);
    case '-':
      result = sub(leftValue, rightValue);
    case '*':
      result = mul(leftValue, rightValue);
    case '/':
      result = divide2(leftValue, rightValue);
    default:
      print("잘못된 수식입니다.");
  }
  print('계산결과 :$result');
}
int add(int leftValue, int rightValue){
  return leftValue + rightValue;
}
int sub(int leftValue, int rightValue){
  return leftValue - rightValue;
}
int mul(int leftValue, int rightValue){
  return leftValue * rightValue;
}
double divide(int leftValue, int rightValue){
  return leftValue / rightValue;
}
int divide2(int leftValue, int rightValue){
  return leftValue ~/ rightValue;
}

  //실습 1
int add1(int a, int b){
  return(a+b);
}

  //실습 2
String reverse(String inputStr){
  List<String> strList = inputStr.split('');

  dynamic value1 = strList.reversed;
  String value2 = value1.join('');
  return value2;
}
//실습3
String capital(String upperCamel){

  String convertedString = '';

  for(int i = 0; i < upperCamel.length; i++){
    String capitalWord = upperCamel[i];
  print('------- $capitalWord');
    if(capitalWord == capitalWord.toUpperCase() && i != 0){
      convertedString += '_';
    }

  convertedString+=capitalWord.toLowerCase();
  }
  return convertedString;
}


