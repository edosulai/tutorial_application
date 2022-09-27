import 'package:tutorial_application/models/FLUTTER%2069.%20Equatable%20(person).dart';

void main() {
  Person p = Person(name: "Dodi", age: 10);

  if (p == Person(name: "Dodi", age: 10)) {
    print("sama");
  } else {
    print("tidak sama");
  }

  List<Person> persons = [p];
  if (persons.contains(Person(name: "Dodi", age: 10))) {
    print("ada");
  } else {
    print("tidak ada");
  }
}
