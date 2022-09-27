
import 'package:flutter/material.dart';
import 'package:tutorial_application/models/FLUTTER%2036.%20HTTP%20Request%20_%20Koneksi%20ke%20API%20(Post%20Method)%20%20-%20Tutorial%20Flutter%20-%20Flutter%20Indonesia%20(post%20result).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("API Demo")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((postResult != null)
                  ? "${postResult.id} | ${postResult.name} | ${postResult.job} | ${postResult.created}"
                  : "Tidak ada data"),
              RaisedButton(
                onPressed: () {
                  PostResult.connectToAPI("Badu", "Dokter").then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
                child: const Text("POST"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
