import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial_application/views/FLUTTER%2092.%20GetX%20-%20Navigation%20Part%202%20(second%20page).dart';

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
            // Get.to(
            //   SecondPage(),
            //   transition: Transition.zoom,
            //   duration: Duration(seconds: 2),
            // );
            Get.toNamed('/second?name=Erico Darmawan &from=Indonesia',
                arguments: ['Hello', 'World']);
          },
          child: Text("Go to Second Page"),
        ),
      ),
    );
  }
}
