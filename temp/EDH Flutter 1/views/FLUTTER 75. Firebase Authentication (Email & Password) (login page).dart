import 'package:flutter/material.dart';
import 'package:tutorial_application/services/FLUTTER%2075.%20Firebase%20Authentication%20(Email%20&%20Password)%20(auth%20service).dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 300,
              height: 100,
              child: TextField(
                controller: emailController,
              ),
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: TextField(
                controller: passwordController,
              ),
            ),
            RaisedButton(
              child: const Text("Sign In Anonymous"),
              onPressed: () async {
                await AuthServices.signInAnonymous();
              },
            ),
            RaisedButton(
              child: const Text("Sign In"),
              onPressed: () async {
                await AuthServices.signIn(
                  emailController.text,
                  passwordController.text,
                );
              },
            ),
            RaisedButton(
              child: const Text("Sign Up"),
              onPressed: () async {
                await AuthServices.signUp(
                  emailController.text,
                  passwordController.text,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
