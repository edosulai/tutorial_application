import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wear/wear.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

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
        body: Center(
          child: WatchShape(
            builder: (context, shape, child1) => AmbientMode(
              builder: (context, mode, child2) => Container(
                height: double.infinity,
                width: double.infinity,
                color: mode == WearMode.active
                    ? Colors.orange.shade900
                    : Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      shape.name,
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      mode.name,
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    GestureDetector(
                      onTap: () {
                        if (mode == WearMode.active) {
                          setState(() {
                            number++;
                          });
                        }
                      },
                      child: Text(
                        '$number',
                        style: GoogleFonts.poppins(
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
