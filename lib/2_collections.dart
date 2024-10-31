import 'dart:io';

void collectionMain(){

  print("--실습1--");
  List<int> result1 = [1,2,3,4,5];
  print(result1);

  result1.remove(3);
  print(result1);

  print("--실습2--");
  List<int> numbers1 = [1,2,3,4];
  List<int> numbers2 = [5,6,7];

  print(numbers1+numbers2);
  numbers1.addAll(numbers2);
  print(numbers1);

  print("--실습3--");
  List<dynamic> result = [1,2,3,4,5,6,7,8,9,10];
  print(result);
  print(result[6]);
  result[6] = 'seven';
  print(result[6]);

  print("--실습4--");
  List<int> result4 = [3,7,2,10,5];
  print(result4);
  result4.sort();
  print(result4);

  print("--실습5--");
  List<dynamic> result5 = [['apple','orange'],[true,false],null,[1,'golf',3]];
  print(result5);
  print(result5.length);
  print(result5[3].length);

  print("--실습6--");
  Map<String, dynamic> user = {'name':'John', 'email':'john@od.com', 'age':25};
  print(user);

  print("--실습7--");
  Map<String, dynamic> student = {
    'name': 'Jane',
    'id': 12345,
    'grade' : { 'math':3, 'history':4.3},
  };
  print("history과목 학점: ${student['grade']['history']}");

  print("--실습8--");
  Map<String,dynamic> country1 = {
    'name':'Indonesia',
    'capital':'Jakarta',
    'population' : 563254125
  };
  print(country1);
  //country.addAll({'currency':'IDR'});
  country1['currency'] = 'IDR';
  //Map에 value를 통해 값을 대입할 때, 해당 value가 이미 존재하면 새로운 값이 할당되고,
  //없는 value라면 새로운 key가 생성되어 value를 가지게 된다
  print(country1);

  print("--실습9--");
  Map<String, dynamic> country = {
    'name':'Indonesia',
    'capital': 'Jakarta',
    'population': 273423615,
    'currency': 'IDR'
  };
  print("All keys of Map: ${country.keys}");
  print("All values of Map: ${country.values}");
  print("Is Map empty: ${country.isEmpty}");
  print("Is Map not empty: ${country.isNotEmpty}");
  print("Length of map is: ${country.length}");

  print("--실습10--");
  stdout.write("이름을 입력하세요: ");
  String userName = stdin.readLineSync()!;

  Map<String, int> student1 = {'Jane':18, 'Jhon':24, 'Tom':12, 'Kim':34, 'Damon':29};

  print("$userName이 student 목록에 있나? ${student1.containsKey('userName')}");
  print("$userName의 나이는 ${student1[userName]}");
}