
import 'package:flutter/material.dart';
import 'package:tutorial_application/views/FLUTTER%2046.%20Doc%20Comment%20(user%20profile%20page).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final UserProfile profile = const UserProfile(
    name: "Tony Stark",
    role: "Iron Man",
    photoURL:
        "https://i1.wp.com/i2.hdslb.com/bfs/archive/f0cf19ed19d9ff9336e5ddea5e2c14249b38f8a4.jpg?fit320,200",
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: const Text("Doc Comment Example"),
        ),
        body: Center(child: profile),
      ),
    );
  }
}
