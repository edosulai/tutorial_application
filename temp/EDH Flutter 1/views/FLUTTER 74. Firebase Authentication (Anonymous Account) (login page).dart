import 'package:flutter/material.dart';
import 'package:tutorial_application/services/FLUTTER%2074.%20Firebase%20Authentication%20(Anonymous%20Account)%20(auth%20service).dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Center(
        child: RaisedButton(
          child: const Text("Sign In Anonymous"),
          onPressed: () async {
            await AuthServices.signInAnonymous();
          },
        ),
      ),
    );
  }
}
