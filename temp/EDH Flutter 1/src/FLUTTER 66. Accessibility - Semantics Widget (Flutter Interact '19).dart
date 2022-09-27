import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Semantics(
            hidden: true,
            excludeSemantics: true,
            child: const Text("Aplikasi Aksesibilitas"),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              number++;
            });
          },
          child: Semantics(
            onTapHint: "menambahkan bilangan dengan satu",
            child: const Icon(Icons.plus_one),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Semantics(
                label:
                    "Ini adalah bilangan yang akan di tambahkan. Bilangan saat ini adalah",
                child: Text(
                  number.toString(),
                  style: const TextStyle(
                      fontSize: 60, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
