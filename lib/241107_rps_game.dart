import 'dart:convert';
import 'dart:io';
import 'dart:math';

void rpsGame() {
  ///1. 유저에게 어떤 타입을 낼 것인지 물어보는 질의 창
  print('가위, 바위, 보 중 하나를 선택해주세요');
  final String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error';

  /// 2. 컴퓨터가 낼 타입이 어떤것인지 결정하는 함수
  const selectList = ['가위', '바위', '보'];
  final cpuInput = selectList[Random().nextInt(3)];

  print(cpuInput);

  /// 3. 유저와 컴퓨터의 타입에 대한 결과를 계산할 함수
  final result = getResult(userInput, cpuInput);
  print(result);
}

String getResult(String userInput, String cpuInput) {
  const cpuWin = 'CPU가 승리 하였습니다.';
  const playWin = '플레이어가 승리 하였습니다.';
  const draw = '비겼습니다.';

  String result = draw;
  switch (userInput) {
    case '가위':
      if (cpuInput == '바위') {
        result = cpuWin;
      } else if (cpuInput == '보') {
        result = playWin;
      }
    case '바위':
      if (cpuInput == '보') {
        result = cpuWin;
      } else if (cpuInput == '가위') {
        result = playWin;
      }
    case '보':
      if (cpuInput == '가위') {
        result = cpuWin;
      } else if (cpuInput == '바위') {
        result = playWin;
      }
    default:
      result = '잘못 입력하셨습니다.';
  }
  return result;
}
