import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Shimer Demo")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/originals/20/5a/e3/205ae34da35beec637f797ba86e5f418.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Shimmer(
                    gradient: LinearGradient(
                      begin: const Alignment(-1, 0.25),
                      end: const Alignment(1, -0.25),
                      stops: const [0.45, 0.5, 0.55],
                      colors: [
                        Colors.white.withOpacity(0),
                        Colors.white.withOpacity(0.5),
                        Colors.white.withOpacity(0),
                      ],
                    ),
                    child: Container(
                      width: 200,
                      height: 300,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Shimmer(
                direction: ShimmerDirection.rtl,
                period: Duration(seconds: 5),
                loop: 2,
                gradient: LinearGradient(
                  begin: Alignment(-1, 0.25),
                  end: Alignment(1, -0.25),
                  stops: [0.45, 0.5, 0.55],
                  colors: [
                    Colors.black,
                    Colors.white,
                    Colors.black,
                  ],
                ),
                child: Text(
                  "Lalisa Manoban",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
