import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorial_application/firebase_options.dart';
import 'package:tutorial_application/widgets/FLUTTER%202%20-%2005.%20CRUD%20width%20Cloud%20Firestore%202%20-%20Retrieve%20-%20One%20Time%20&%20Real%20Time%20Read%20(item%20card).dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text('Firestore Demo'),
          ),
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              ListView(
                children: [
                  //// VIEW DATA HERE
                  FutureBuilder<QuerySnapshot>(
                    future: users.get(),
                    builder: (_, snapshot) => snapshot.hasData
                        ? Column(
                            children: snapshot.data!.docs
                                .map((e) => ItemCard(
                                    (e.data()! as Map<String, dynamic>)['name'],
                                    (e.data()! as Map<String, dynamic>)['age']))
                                .toList(),
                          )
                        : Text("Loading"),
                  ),
                  SizedBox(height: 150)
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(-5, 0),
                        blurRadius: 15,
                        spreadRadius: 3,
                      )
                    ],
                  ),
                  width: double.infinity,
                  height: 130,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 160,
                        // width: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              style: GoogleFonts.poppins(),
                              controller: nameController,
                              decoration: InputDecoration(hintText: "Name"),
                            ),
                            TextField(
                              style: GoogleFonts.poppins(),
                              controller: ageController,
                              decoration: InputDecoration(hintText: "Age"),
                              keyboardType: TextInputType.number,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 130,
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: Colors.blue[900],
                          child: Text(
                            'Add Data',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            users.add({
                              'name': nameController.text,
                              'age': int.tryParse(ageController.text) ?? 0
                            });

                            nameController.text = '';
                            ageController.text = '';
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
