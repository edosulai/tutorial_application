import 'package:flutter_test/flutter_test.dart';
import 'package:tutorial_application/models/FLUTTER%2067.%20Unit%20Testing%20(person).dart';

void main() {
  group("Mengecek class Person", () {
    Person p;
    p = Person();

    test("Inisialisasi Objek Person", () {
      expect(p.name, equals("no name"));
      expect(p.age, equals(0));
    });

    test("Age harus positif", () {
      p.age = -5;
      expect(p.age, isPositive);
    });

    test("Angka keberuntungan harus 3 buah bilangan positif", () {
      p.age = -5;
      expect(
        p.luckyNumber,
        allOf(
          hasLength(equals(3)),
          isNot(anyElement(isNegative)),
        ),
      );
    });
  });

  setUp(() {
    print("set up");
  });

  tearDown(() {
    print("tear down");
  });
}
