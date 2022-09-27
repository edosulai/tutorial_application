import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Person> persons = [
    Person('Doni', 47),
    Person('Ayu', 20),
    Person('Zorro', 33),
    Person('Charlie', 21),
  ];

  @override
  Widget build(BuildContext context) {
    List<Person> sortedPerson = persons.sortedByString(
      (element) => element.name,
    );
    List<List<Person>> groupsOfTwo = sortedPerson.chunked(2).toList();
    Map<String, List<Person>> groupByAge = sortedPerson.groupBy(
      (element) => element.age < 40 ? 'young' : 'old',
    );
    DateTime twentyThreeMinutesAgo = 23.minutes.ago();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Color(0xFF990000),
          backgroundColor: "#990000".toColor(),
          title: Text(
            "Supercharge Demo",
            style: GoogleFonts.poppins(),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 3),
                child: Text(
                  "List Person",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9900000),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: sortedPerson
                    .map(
                      (e) => Text(
                        "> ${e.name} [${e.age}]",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                    .toList(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 3),
                child: Text(
                  'Age of the Oldest',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9900000),
                  ),
                ),
              ),
              Text(
                "${persons.map((e) => e.age).max()} years old",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 3),
                child: Text(
                  'Average age',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9900000),
                  ),
                ),
              ),
              Text(
                "${persons.averageBy((e) => e.age)} years old",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 3),
                child: Text(
                  'Groups of 2:',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9900000),
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: groupsOfTwo[0]
                        .map(
                          (e) => Text(
                            "> ${e.name} [${e.age}]",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: groupsOfTwo[1]
                        .map(
                          (e) => Text(
                            "> ${e.name} [${e.age}]",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 3),
                child: Text(
                  'Groups by age:',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9900000),
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: groupByAge['young']
                        .map(
                          (e) => Text(
                            "> ${e.name} [${e.age}]",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: groupByAge['old']
                        .map(
                          (e) => Text(
                            "> ${e.name} [${e.age}]",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 3),
                child: Text(
                  'This time:',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9900000),
                  ),
                ),
              ),
              Text(
                "${DateTime.now().hour} : ${DateTime.now().minute}",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 3),
                child: Text(
                  '23 minutes ago:',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9900000),
                  ),
                ),
              ),
              Text(
                "${twentyThreeMinutesAgo.hour} : ${twentyThreeMinutesAgo.minute}",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
