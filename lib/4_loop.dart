import 'dart:io';
import 'dart:math';

void loopMain(){
  print('--실습1--');
  for( var i = -10; i <= 10; i++) {
    if(i % 2 != 0){
      print(i);
    }
  }

  print('--실습2--');
  int result = 0;
  for(var i=1; i<=10; i++){
    result = result + i;
  }
  print('총합: $result');

  print('--실습3--');
  List a3 = [1,0,2,3,5,8,13,4,34,2,89];
  for( var i = 0; i <a3.length; i++){
    if( a3[i] < 5 ){
      print(a3[i]);
    }
  }

  // print('--실습4--');
  // stdout.write("문자열을 입력 해 주세요: ");
  // String memo = stdin.readLineSync()!;
  // String result4 = '';
  //
  // for( var i = 0; i < memo.length; i++){
  //   result4 = result4+memo[i]+'#';
  // }
  // print(result4);

  // print('--실습5--'); //너무너무너무너무 어려워 //답지보고나니, 별거 아님,,,큽
  // stdout.write(",로 구분되는 문자열 입력: ");
  // String word = stdin.readLineSync()!;
  // List<String> listWord = word.split(',');
  // print(listWord);
  //
  // for(var i = 0; i <listWord.length; i++){
  //   if(i == 0){
  //     print(listWord[0]);
  //   }
  //   if(i == listWord.length -1 ){
  //     print(listWord[i]);
  //   }
  // }

  print('--실습6--');
  int first;
  int second;

  for (first = 2; first <10; first++){
    print("구구단 $first 단");
    for (second = 1; second < 10; second++){
      print("$first x $second = ${first*second}");
    }

  }

  print('--실습7--');

  // print("가위,바위,보 게임을 시작합니다.");
  // final random = Random();
  //
  // Map<String, String> rules = {
  //   "가위": "보",
  //   "바위": "가위",
  //   "보": "바위"
  // }; // key로 가위,바위,보 중 하나를 주면, 지는 value를 반환하는 Map
  //
  // //컴퓨터의 랜덤 선택 값
  // List<String> options = ["가위", "바위", "보"];
  //
  // //무한루프
  // for(var i = 0; i <= 0; i = 0){
  //   String computerChoice = options[random.nextInt(options.length)];
  //
  //   stdout.write("가위, 바위, 보 입력: ");
  //   String userHand = stdin.readLineSync()!;
  //
  //   if (userHand == 'exit'){
  //     print("\n 게임종료");
  //     break;
  //   }
  //   if (!options.contains(userHand)){
  //     print("잘못 입력 하셨습니다. 다시 입력 해 주세요.");
  //   }else if(userHand == computerChoice){
  //     print("tie with Computer: $computerChoice vs $userHand");
  //   }else if(userHand == rules[computerChoice]){
  //     print("Computer wins: $computerChoice vs $userHand");
  //   }else if(computerChoice == rules[userHand]){
  //     print("You win: $computerChoice vs $userHand");
  //   }

  // print('--실습8--');
  // stdout.write("빙고판 크기를 입력하라 (한 자리숫자): ");
  // int bingGo = int.parse(stdin.readLineSync()!);
  //
  // for(int i = 0; i < bingGo; i++){
  //   var Length = '';
  //   var Width = '';
  //
  //   for(int j = 0; j < bingGo; j++){
  //     Length += ' ---';
  //     Width += '|   ';
  //   }
  //   Width +='|'; //마지막 가로 추가
  //
  //   print(Length);
  //   print(Width);
  // }
  //
  // var Length = '';
  // for(int j = 0; j < bingGo; j++){
  //   Length += ' ---';
  // }
  // print(Length);


  print('--실습9--');
  List<List> score =  [[85, 90, 20, 50, 60], [70, 100, 70, 70, 55], [25, 65, 15, 25, 20]];
  int sum = 0;
  int count = 0;

  for(var eachStudent in score) {

    for(var eachScore in eachStudent) {
      count = count + 1;
      sum = sum + (eachScore as int);
    }
  }
  print('평균값: ${sum/count}');

  print('--실습10--');
  List<int> a = [0, 1, 2, 3, 5, 8, 32, 31, 44, 55, 79];
  List<int> b = [9, 2, 3, 4, 5, 6, 7, 8, 55, 10, 11, 32, 13];

  List<int> ab =[];

  a.forEach((itemA){
    b.forEach((itemB){
      if(itemA==itemB){
        ab.add(itemA);
      }
    });
  });
  print(ab);







}