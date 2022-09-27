import 'package:flutter/material.dart';
import 'package:division/division.dart';
import 'package:tutorial_application/styles/FLUTTER%2062.%20%20Division%20(Styling%20Widget%20Inspired%20by%20CSS)%20(custom%20style).dart';
import 'package:tutorial_application/widgets/FLUTTER%2062.%20%20Division%20(Styling%20Widget%20Inspired%20by%20CSS)%20(custom%20button).dart';
import 'package:tutorial_application/widgets/FLUTTER%2062.%20%20Division%20(Styling%20Widget%20Inspired%20by%20CSS)%20(my%20button).dart';

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
          title: Txt(
            "Division Example",
            style: CustomStyles.txtStyle.clone()..fontSize(18),
          ),
          backgroundColor: Colors.red[900],
        ),
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(),
              const SizedBox(height: 20),
              CustomButton(CustomStyles.buttonStyle),
              const SizedBox(height: 20),
              CustomButton(CustomStyles.buttonStyle.clone()
                ..background.color(Colors.green[300])
                ..border(all: 3, color: Colors.green[900]))
            ],
          ),
        ),
      ),
    );
  }
}
