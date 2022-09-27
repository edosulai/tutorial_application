
import 'package:flutter/material.dart';
import 'package:tutorial_application/models/FLUTTER%2038.%20HTTP%20Request%20_%20Koneksi%20ke%20API%20(Kumpulan%20Data)%20(user).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "no data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("API Demo")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(output),
              RaisedButton(
                onPressed: () {
                  User.getUsers(3).then((users) {
                    output = "";
                    for (var i = 0; i < users.length; i++) {
                      output = "$output[ ${users[i].firstName} ${users[i].lastName} ]";
                    }
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
