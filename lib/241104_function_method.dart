void functionMethodMain(){
/// 함수/메서드
  int num1 = 10;
  int num2 = 20;
  int sum = add(num1, num2);
  print(sum);
}
int add(int num1, int num2){
  return num1 + num2;
}

void ifStatementMain() {
  /// 분기문: 프로그램이 특정한 상황에 일을 할 지/ 하지 않고 넘길지
  /// if / else || switch

  /// if(조건식){
  ///   조건식이 참일 때 동작하는 코드
  ///   } else if(조건식2){
  ///   조건식2가 참일 때 동작하는 코드
  ///   } else {
  ///   조건식이 거짓일 때 동작하는 코드
  ///   }
  bool isTrue = true;
  if (isTrue) {
    print('True');
  }

  if (10 < 20) {
    print('True');
  }

  String text = 'Hello';
  if (text == 'Hello') {
    print('True');
  }

  bool trigger = 10 > 20;
  if (trigger) {
    print('True');
  } else {
    print('False');
  }

  /// switch 문
  /// Flutter 3.10 / Dart 3.0 버전 이상부터 변경 된 부분이 조금 있는 문법 중 하나,
  /// 기존의 case 뒤에 값이 오는 것이 아니라, case 뒤에 조건식이 올 수 있게 되었다.
  /// 그리고 break 키워드를 사용하지 않아도 되는 등,
  /// 기존의 Java나 C++에서 사용하던 switch문과는 약간 다른 형태를 띄고 있다.

  /// switch(비교 대상){
  ///   case(조건 식1) :
  ///   case(조건 식2) :
  ///   default:
  /// }
  ///
  ///
  int num = 5;

  switch (num) {
    case 1:
      print(num);
    case 2:
      print(num);
    case 3:
      print(num);
    case 4:
      print(num);
    case 5:
      print(num);
      print('Answer is 5');
    case > 100:
      print('Wow big number!! $num');
    default:
      print('Not 1~5');
  }
}

void forForinMain() {
  /// 반복문: 특정한 코드의 반복을 컴퓨터에게 지시할 때 사용하는 문법
  /// for / for in / while / do - while
  /// continue / break
  ///
  /// for (기준 변수; 조건식; 가변치) {
  ///   조건식이 참 일 때 반복할 코드
  /// }
  ///
  for (int i = 0; i < 10; i++) {
    print('Running $i');
  }

  /// for in: 반복할 리스트가 있을 때 사용하는 문법
  /// for (변수 in 리스트 (List / Set / Map) ) {
  ///   컬랙션 내에 요소들의 수 / 변수 만큼 반복할 코드
  /// }
  ///
  List<int> indexs = [0, 1, 2, 3, 4, 5];
  for (final index in indexs) {
    ///여기서는 왜 index를 int타입말고 final을 써?
    ///index는 변경될 일이 없기 때문에 final을 써서 변경되지 않도록 해준다.
    print('Running For Index : $index');
  }

  /// while: 조건이 참일 때 계속 반복
  /// while (조건) {
  ///   // 반복할 코드
  /// }
  bool isRunning = true;
  int count = 0;
  while (isRunning){
    if (count >= 5 ) {
    isRunning = false;
  }
    count++;
    print('While is Running $count');
}

  /// do - while
  /// do {
  ///   선행 진행 / 반복 될 코드
  /// } while (조건);
  ///
  int num1 = 0;
  do {
    num1++;

    if(num1 == 4){
      continue;
      /// 여기서 continue는
      /// 반복문 내에서만 사용할 수 있으며, continue를 만나면 다음 반복을 실행하지 않고 건너뛰게 됨.
      /// 따라서 여기서는 4일 때 출력되지 않고 건너뛰게 됨.

    }

    print('Running Do while $num1');
  } while (num1 < 10);
}

void exceptionHandlingMain(){
/// 예외처리: 프로그램이 진행 중일 때, 의도하였거나 / 의도하지 않은 상황에 대해서 프로그램적으로 오류가 발생했을 때 대처하는 방법
  /// try - catch: 가장 기본적인 예외처리문
    /// catch: 예외가 발생했을 때만 실행되는 코드
    /// catch(e, s) : e는 발생한 예외 객체, s는 stacktrace
  /// finally: 예외 발생 여부와 상관없이 실행되는 코드
  ///  on: 특정 예외 객체만 처리하는 방법
  ///  throw: 프로그래머가 의도적으로 예외를 발생시키는 방법
  ///  rethrow: 예외를 다시 발생시키는 방법


  int num1 = 10;
  try {
    ///예외가 발생할 것으로 예상되는 코드
    // print(10 ~/ 0);

    // } catch(error, stack){
    //   ///예외가 발생했을 때 실행 하고자 하는 코드
    //   print("예외가 발생했습니다. : $error");
    //   print("stack trace 입니다. : $stack");
    // } on IntegerDivisionByZeroException catch(e,s){
    //
    // }
    throw Exception('Unknown exception');

  } on UnsupportedError catch(e, s){
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch (e, s){
    print('Null값이 참조 되었습니다.');
  } catch (e, s){
    print('모르는 에러가 발생했습니다. $e');
    rethrow;
  }
  finally{
    ///예외 발생 여부와 상관없이 무조건 실행되는 코드
    print('예외처리 문을 지나쳤습니다.');
  }

}