import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Typography"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Contoh 01 (Tanpa apapun)",
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                "Contoh 02 (Small Caps)",
                style: TextStyle(
                  fontSize: 20,
                  fontFeatures: [FontFeature.enable("smcp")],
                ),
              ),
              const Text(
                "Contoh 3 1/2 (Small Caps & Frac)",
                style: TextStyle(
                  fontSize: 20,
                  fontFeatures: [
                    FontFeature.enable("smcp"),
                    FontFeature.enable("frac")
                  ],
                ),
              ),
              const Text(
                "Milonga 3 1/2 (Small Caps & Frac)",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Milonga",
                  fontFeatures: [
                    FontFeature.enable("smcp"),
                    FontFeature.enable("frac")
                  ],
                ),
              ),
              const Text(
                "Contoh Cardo 19 (Tanpa apapun)",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Cardo",
                ),
              ),
              const Text(
                "Contoh Cardo 19 (Old Style)",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Cardo",
                  fontFeatures: [FontFeature.oldstyleFigures()],
                ),
              ),
              const Text(
                "Gabriola (Default)",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Gabriola",
                ),
              ),
              Text(
                "Gabriola (Style set nomor 5)",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Gabriola",
                  fontFeatures: [FontFeature.stylisticSet(5)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
