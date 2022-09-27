import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_application/firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_application/services/FLUTTER%2075.%20Firebase%20Authentication%20(Email%20&%20Password)%20(auth%20service).dart';
import 'package:tutorial_application/widgets/FLUTTER%2074.%20Firebase%20Authentication%20(Anonymous%20Account)%20(wrapper).dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.firebaseUserStream,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
