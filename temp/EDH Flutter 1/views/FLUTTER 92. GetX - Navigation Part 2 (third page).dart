import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial_application/views/FLUTTER%2092.%20GetX%20-%20Navigation%20Part%202%20(main%20page).dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Get.back<String>(result: "Ini nilai dari page 3");
              },
              child: Text("Back to Second Page"),
            ),
            SizedBox(height: 10),
            RaisedButton(
              onPressed: () {
                Get.offAll(MainPage());
              },
              child: Text("Back to Main Page"),
            ),
          ],
        ),
      ),
    );
  }
}
