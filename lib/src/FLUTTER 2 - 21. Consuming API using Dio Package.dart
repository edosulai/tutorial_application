import 'package:flutter/material.dart';
import 'package:tutorial_application/models/FLUTTER%202%20-%2021.%20Consuming%20API%20using%20Dio%20Package%20(person).dart';
import 'package:tutorial_application/services/FLUTTER%202%20-%2021.%20Consuming%20API%20using%20Dio%20Package%20(services).dart';
import 'package:tutorial_application/widgets/FLUTTER%202%20-%2021.%20Consuming%20API%20using%20Dio%20Package%20(person%20card).dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Person? person;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dio Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              person != null
                  ? PersonCard(person: person!)
                  : const Text('no data'),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () async {
                    Person? result = await Services.getById(2);
                    if (result != null) {
                      setState(() {
                        person = result;
                      });
                    }
                  },
                  child: const Text('GET'),
                ),
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () async {
                    Person? result = await Services.createUser(
                        'Edo', 'Sulai', 'edosulaii@gmail.com');
                    if (result != null) {
                      setState(() {
                        person = result;
                      });
                    }
                  },
                  child: const Text('POST'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
