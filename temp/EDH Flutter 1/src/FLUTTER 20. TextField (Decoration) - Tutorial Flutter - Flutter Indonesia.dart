
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Text Field"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              decoration: InputDecoration(
                icon: const Icon(Icons.adb),
                prefixIcon: const Icon(Icons.person),
                prefixText: "Name : ",
                prefixStyle:
                    const TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                labelText: "Nama Lengkap",
                // labelStyle: ,
                hintText: "Masukkan Nama Lengkap",
                hintStyle: const TextStyle(fontSize: 12),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              maxLength: 5,
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
            ),
            Text(controller.text),
          ],
        ),
      ),
    ));
  }
}
