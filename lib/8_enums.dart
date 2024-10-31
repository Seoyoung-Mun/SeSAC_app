
//실습1
enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday
}
//실습2
enum Month {
  january, february, march, april, may, june, july, august, september, october, november, december
}
void enumsMain(){
  //실습1
  Day today = Day.thursday;
  print('Today is $today');

  //실습2
  for(int i = 0; i < Month.values.length; i++){
    print(Month.values[i]);
  }
  // for (Month month in Month.values) {
  //   print(month);
  // } //for in문 예시
}