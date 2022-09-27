import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial_application/views/FLUTTER%2091.%20GetX%20-%20Navigation%20Part%201%20(third%20page).dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Back to Main Page"),
            ),
            SizedBox(height: 10),
            RaisedButton(
              onPressed: () async {
                String result = await Get.to(ThirdPage());
                print("====> $result");
              },
              child: Text("Go to Third Page"),
            ),
          ],
        ),
      ),
    );
  }
}
