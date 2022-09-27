import 'package:flutter/material.dart';
import 'package:tutorial_application/widgets/FLUTTER%2065.%20Rive%20+%20Flutter%20(Flutter%20Interact%20\'19)%20(switch%20day%20night).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text("Rive + Flutter"),
        ),
        body: Center(
          child: SwitchDayNight(),
        ),
      ),
    );
  }
}
