import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[900],
          title: Text(
            "Lottie Animation Demo",
            style: GoogleFonts.poppins(),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                // child: LottieBuilder.network(
                //   "https://assets3.lottiefiles.com/packages/lf20_HX0isy.json",
                // ),
                child: LottieBuilder.asset(
                  "assets/lotties/27330-construction-in-process-by-kit8net.json",
                  controller: controller,
                ),
              ),
              Text(
                "Featured Lottie Animation by kit8.net",
                style: GoogleFonts.poppins(),
              ),
              RaisedButton(
                onPressed: () {
                  controller.forward();
                },
                child: Text(
                  "Play Animation",
                  style: GoogleFonts.poppins(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
