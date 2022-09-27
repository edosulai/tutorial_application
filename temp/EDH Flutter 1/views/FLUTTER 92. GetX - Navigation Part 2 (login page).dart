import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial_application/views/FLUTTER%2092.%20GetX%20-%20Navigation%20Part%202%20(main%20page).dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Get.off(MainPage());
            Get.offNamed('/main');
          },
          child: Text("LOGIN"),
        ),
      ),
    );
  }
}
