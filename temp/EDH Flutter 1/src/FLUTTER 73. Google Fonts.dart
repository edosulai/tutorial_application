import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color fontColor = const Color(0xffffb401);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.modakTextTheme(),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xff1e252d),
        appBar: AppBar(
          backgroundColor: const Color(0xff282f37),
          title: const Text("Google Fonts Demo"),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "I'll keep learning Flutter",
                style: TextStyle(color: fontColor, fontSize: 25),
              ),
              Text(
                "O yeah !!",
                style: TextStyle(color: fontColor, fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
