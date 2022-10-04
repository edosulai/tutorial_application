import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:tutorial_application/pages/FLUTTER%202%20-%2032.%20Stateful%20Builder%20(stateful%20main%20page).dart';
import 'package:tutorial_application/pages/FLUTTER%202%20-%2032.%20Stateful%20Builder%20(stateless%20main%20page).dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('==== BUILDING ROOT APP ====');

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: StatelessMainPage(),
      home: StatefulMainPage(),
    );
  }
}
