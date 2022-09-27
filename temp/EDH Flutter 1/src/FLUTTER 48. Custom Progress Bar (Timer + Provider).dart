import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_application/providers/FLUTTER%2048.%20Custom%20Progress%20Bar%20(Timer%20+%20Provider)%20(time%20state).dart';
import 'package:tutorial_application/widgets/FLUTTER%2048.%20Custom%20Progress%20Bar%20(Timer%20+%20Provider)%20(custom%20progress%20bar).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Custom Progress Bar")),
        body: Center(
          child: ChangeNotifierProvider<TimeState>(
            create: (context) => TimeState(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Consumer<TimeState>(
                  builder: (context, timeState, _) => CustomProgressBar(
                    width: 200,
                    value: timeState.time,
                    totalValue: 15,
                  ),
                ),
                const SizedBox(height: 10),
                Consumer<TimeState>(
                  builder: (context, timeState, _) => RaisedButton(
                    color: Colors.lightBlue,
                    child: const Text("Start", style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      Timer.periodic(const Duration(seconds: 1), (timer) {
                        if (timeState.time == 0) {
                          timer.cancel();
                        } else {
                          timeState.time -= 1;
                        }
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
