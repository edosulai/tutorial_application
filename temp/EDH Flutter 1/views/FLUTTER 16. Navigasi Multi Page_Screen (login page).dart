import 'package:flutter/material.dart';
import 'package:tutorial_application/views/FLUTTER%2016.%20Navigasi%20Multi%20Page_Screen%20(main%20page).dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return MainPage();
            }));
          },
          child: const Text("LOGIN"),
        ),
      ),
    );
  }
}
