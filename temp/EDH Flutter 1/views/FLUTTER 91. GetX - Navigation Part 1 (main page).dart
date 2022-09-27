import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial_application/views/FLUTTER%2091.%20GetX%20-%20Navigation%20Part%201%20(second%20page).dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Get.to(SecondPage());
          },
          child: Text("Go to Second Page"),
        ),
      ),
    );
  }
}
