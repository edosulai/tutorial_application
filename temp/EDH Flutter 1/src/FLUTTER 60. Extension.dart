import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final int x = -10;
  List<int> myList = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Extension Demo")),
        body: Center(
          child: Text(
            "Bilangan:" & myList.midElement.toString(),
            style: const TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}

extension ListExtension<T> on List {
  T get midElement => (length == 0) ? null : this[(length / 2).floor()];
}

extension NumberExtension<T extends num> on num {
  T negate() => -1 * this;
}

extension StringEctension on String {
  String operator &(String other) => "${this} $other";
}
