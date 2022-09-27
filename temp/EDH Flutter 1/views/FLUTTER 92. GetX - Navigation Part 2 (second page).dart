import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial_application/views/FLUTTER%2092.%20GetX%20-%20Navigation%20Part%202%20(third%20page).dart';

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
            Column(
              children: (Get.arguments as List<String>)
                      .map(
                        (e) => Text(e),
                      )
                      .toList() +
                  [
                    Text(Get.parameters['name']),
                    Text(Get.parameters['from']),
                  ],
            ),
            // RaisedButton(
            //   onPressed: () async {
            //     String result = await Get.to(ThirdPage());
            //     print("====> $result");
            //   },
            //   child: Text("Go to Third Page"),
            // ),
          ],
        ),
      ),
    );
  }
}
