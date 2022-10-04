import 'package:flutter/material.dart';
import 'package:tutorial_application/models/FLUTTER%202%20-%2023.%20Test%20Driven%20Development%20(TDD)%20Part%202%20(user%20repository).dart';
import 'package:tutorial_application/models/FLUTTER%202%20-%2023.%20Test%20Driven%20Development%20(TDD)%20Part%202%20(user).dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: '0');
  User? user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TDD demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              user == null ? const Text('no data') : Text('ID: ${user!.id}'),
              if (user != null) Text('Name: ${user!.name}'),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 50,
                    child: TextField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () async {
                      user = await UserRepository().getUser(
                        int.tryParse(controller.text) ?? 0,
                      );

                      setState(() {});
                    },
                    child: const Text('Get User'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
