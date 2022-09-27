
import 'package:flutter/material.dart';
import 'package:tutorial_application/models/FLUTTER%2037.%20HTTP%20Request%20_%20Koneksi%20ke%20API%20(Get%20Method)%20(user).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  User user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("API Demo")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((user != null)
                  ? "${user.id} | ${user.name}"
                  : "Tidak ada data"),
              RaisedButton(
                onPressed: () {
                  User.connectToAPI(3).then((value) {
                    user = value;
                    setState(() {});
                  });
                },
                child: const Text("GET"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
