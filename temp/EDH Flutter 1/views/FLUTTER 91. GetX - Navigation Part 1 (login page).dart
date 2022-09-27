import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial_application/views/FLUTTER%2091.%20GetX%20-%20Navigation%20Part%201%20(main%20page).dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Get.off(MainPage());
          },
          child: Text("LOGIN"),
        ),
      ),
    );
  }
}
