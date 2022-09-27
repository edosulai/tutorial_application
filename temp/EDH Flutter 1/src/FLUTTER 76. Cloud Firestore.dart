import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_application/firebase_options.dart';
import 'package:tutorial_application/services/FLUTTER%2076.%20Cloud%20Firestore%20(database%20service).dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Firestore Demo")),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: const Text("Add Data"),
                  onPressed: () {
                    DatabaseServices.createOrUpdateProduct(
                      "1",
                      name: "Masker",
                      price: 1000000,
                    );
                  },
                ),
                RaisedButton(
                  child: const Text("Edit Data"),
                  onPressed: () {
                    DatabaseServices.createOrUpdateProduct(
                      "1",
                      name: "Masker",
                      price: 2000000,
                    );
                  },
                ),
                RaisedButton(
                  child: const Text("Get Data"),
                  onPressed: () async {
                    DocumentSnapshot snapshot =
                        await DatabaseServices.getProduct("1");
                    print(snapshot.data()['nama']);
                    print(snapshot.data()['harga']);
                  },
                ),
                RaisedButton(
                  child: const Text("Delete Data"),
                  onPressed: () async {
                    await DatabaseServices.deleteProduct("1");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
