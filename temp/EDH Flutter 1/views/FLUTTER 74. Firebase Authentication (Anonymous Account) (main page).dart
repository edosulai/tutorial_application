import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tutorial_application/services/FLUTTER%2074.%20Firebase%20Authentication%20(Anonymous%20Account)%20(auth%20service).dart';

class MainPage extends StatelessWidget {
  final User user;

  const MainPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main Page")),
      body: Center(
        child: Column(
          children: [
            Text(user.uid),
            RaisedButton(
              child: const Text("Sign Out"),
              onPressed: () async {
                await AuthServices.signOut();
              },
            )
          ],
        ),
      ),
    );
  }
}
