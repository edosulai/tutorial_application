
import 'package:flutter/material.dart';
import 'package:tutorial_application/views/FLUTTER%2016.%20Navigasi%20Multi%20Page_Screen%20(login%20page).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
