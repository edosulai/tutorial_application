import 'package:flutter/material.dart';
import 'package:tutorial_application/models/FLUTTER%2056.%20Drop%20Down%20Button%20(person).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Person selectedPerson;
  List<Person> persons = [
    Person("Joni"),
    Person("Joko"),
  ];

  List<DropdownMenuItem> generateItems(List<Person> persons) {
    List<DropdownMenuItem> items = [];
    for (var item in persons) {
      items.add(DropdownMenuItem(
        value: item,
        child: Text(item.name),
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Demo Dropdown Button")),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: DropdownButton(
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                ),
                isExpanded: true,
                value: selectedPerson,
                items: generateItems(persons),
                onChanged: (item) {
                  setState(() {
                    selectedPerson = item;
                  });
                },
              ),
            ),
            Text(
              selectedPerson != null
                  ? selectedPerson.name
                  : "Belum ada yang terpilih",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
