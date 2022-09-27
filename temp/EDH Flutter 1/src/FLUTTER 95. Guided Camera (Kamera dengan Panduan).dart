import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tutorial_application/views/FLUTTER%2095.%20Guided%20Camera%20(Kamera%20dengan%20Panduan)%20(camera%20page).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  File imageFile;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Camera Test"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                width: 300,
                height: 450,
                color: Colors.grey[200],
                child: (imageFile != null) ? Image.file(imageFile) : SizedBox(),
              ),
              RaisedButton(
                child: Text("Take Picture"),
                onPressed: () async {
                  imageFile = await Navigator.push<File>(
                      context, MaterialPageRoute(builder: (_) => CameraPage()));
                  setState(() {});
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
