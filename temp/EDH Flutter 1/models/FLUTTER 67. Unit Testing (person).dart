import 'dart:math';

class Person {
  String name;
  int _age;
  List<int> luckyNumber;

  int get age => _age;
  set age(int value) {
    if (value < 0) {
      value *= -1;
    }
    _age = value;
  }

  Person() {
    name = "no name";
    age = 0;
    Random r = Random();
    luckyNumber = [];
    for (var i = 0; i < 3; i++) {
      luckyNumber.add(r.nextInt(11));
    }
  }
}
