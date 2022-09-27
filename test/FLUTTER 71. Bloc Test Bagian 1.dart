import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:tutorial_application/FLUTTER%2071.%20Bloc%20Test%20Bagian%201/bloc/counter_bloc.dart';

void main() {
  group("Testing Counter Bloc", () {
    blocTest(
      "Inisialisasi Counter Bloc",
      build: () => CounterBloc(0),
      expect: () => [0],
    );

    blocTest(
      "Add Event",
      build: () => CounterBloc(0),
      expect: () => [0, 2],
      act: (bloc) async {
        bloc.add(const Add(2));
      },
    );

    blocTest(
      "Subtract Event",
      build: () => CounterBloc(0),
      expect: () => [0, 2, -2],
      act: (bloc) async {
        bloc.add(const Subtract(2));
      },
    );

    blocTest(
      "Add & Subtract Event",
      build: () => CounterBloc(0),
      expect: () => [0, 2 - 2, 7],
      act: (bloc) async {
        bloc.add(const Add(2));
        bloc.add(const Subtract(5));
        bloc.add(const DoingNothing());
        bloc.add(const Add(10));
      },
    );
  });
}
