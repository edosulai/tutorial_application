import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Latihan Row dan Column")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("text 1"),
            const Text("text 2"),
            const Text("text 3"),
            Row(
              children: const [
                Text("text 4"),
                Text("text 5"),
                Text("text 6"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
