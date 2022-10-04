import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:tutorial_application/helpers/FLUTTER%202%20-%2032.%20Stateful%20Builder%20(public%20methods).dart';

class StatefulMainPage extends StatefulWidget {
  const StatefulMainPage({Key? key}) : super(key: key);

  @override
  State<StatefulMainPage> createState() => _StatefulMainPageState();
}

class _StatefulMainPageState extends State<StatefulMainPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    log('==== BUILDING PAGE ====');

    return Scaffold(
      appBar: AppBar(
        title: makingText('Stateful MainPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            makingText('Current Number'),
            makingText(number.toString(), fontSize: 30),
            makingSpace(20),
            makingButton('Increment', onPressed: () {
              setState(() {
                number++;
              });
            })
          ],
        ),
      ),
    );
  }
}
