import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_application/firebase_options.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tutorial_application/services/FLUTTER%2075.%20Firebase%20Authentication%20(Email%20&%20Password)%20(auth%20service).dart';
import 'package:tutorial_application/services/FLUTTER%2076.%20Cloud%20Firestore%20(database%20service).dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Firebase Storage Demo")),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (imagePath != null)
                    ? Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                          image: DecorationImage(
                            image: NetworkImage(imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                const SizedBox(height: 10),
                RaisedButton(
                  child: const Text("Sign In"),
                  onPressed: () async {
                    AuthServices.signInAnonymous();
                  },
                ),
                RaisedButton(
                  child: const Text("Upload Image"),
                  onPressed: () async {
                    PickedFile file = await getImage();
                    imagePath =
                        await DatabaseServices.uploadImage(File(file.path));
                    setState(() {});
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

Future<PickedFile> getImage() async {
  return await ImagePicker.platform.pickImage(source: ImageSource.gallery);
}
