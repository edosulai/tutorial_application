import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorial_application/pages/FLUTTER%202%20-%2020.%20Theme%20&%20Theme%20Data%20(preview%20pages).dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.purple.shade100,
        textTheme: GoogleFonts.montserratTextTheme().copyWith(
          bodyText2: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(const StadiumBorder()),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Learning About Theme'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Theme Preview:',
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PreviewPage(
                          themeData: ThemeData(
                            primarySwatch: Colors.red,
                            scaffoldBackgroundColor: Colors.pink.shade50,
                          ),
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                      const Text(
                        'Red Theme',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PreviewPage(
                          themeData: ThemeData(
                            primarySwatch: Colors.green,
                            scaffoldBackgroundColor: Colors.green.shade50,
                            elevatedButtonTheme: ElevatedButtonThemeData(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.brown[700],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                      const Text(
                        'Green Theme',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
