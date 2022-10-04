import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tutorial_application/helpers/FLUTTER%202%20-%2032.%20Stateful%20Builder%20(public%20methods).dart';

class StatelessMainPage extends StatelessWidget {
  const StatelessMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('==== BUILDING PAGE ====');

    int number = 0;

    return Scaffold(
      appBar: AppBar(
        title: makingText('Stateless MainPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            makingText('Current Number'),
            StatefulBuilder(builder: (context, setState) {
              return Column(
                children: [
                  makingText(number.toString(), fontSize: 30),
                  makingSpace(20),
                  makingButton('Increment', onPressed: () {
                    setState(() {
                      number++;
                    });
                  })
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
