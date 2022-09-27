import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial_application/views/FLUTTER%2092.%20GetX%20-%20Navigation%20Part%202%20(login%20page).dart';
import 'package:tutorial_application/views/FLUTTER%2092.%20GetX%20-%20Navigation%20Part%202%20(main%20page).dart';
import 'package:tutorial_application/views/FLUTTER%2092.%20GetX%20-%20Navigation%20Part%202%20(second%20page).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(
          name: '/second',
          page: () => SecondPage(),
          transition: Transition.zoom,
        ),
        GetPage(name: '/main', page: () => MainPage()),
      ],
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
    );
  }
}
