import 'package:flutter/material.dart';
import 'package:tutorial_application/views/FLUTTER%2016.%20Navigasi%20Multi%20Page_Screen%20(second%20page).dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main Page")),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
          child: const Text("Go to Second Page"),
        ),
      ),
    );
  }
}
