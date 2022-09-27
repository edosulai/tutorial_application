import 'package:flutter/material.dart';
import 'package:tutorial_application/widgets/FLUTTER%2063.%20Widget%20Slider%20using%20Page%20View%20(movie%20box).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.6);
    List<String> urls = [
      "https://images-na.ssl-images-amazon.com/images/I/A1hFzTczzJL._SL500_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/A1t8xCe9jwL._SL1500_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/91wc7yc2R8L._SL1500_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/71qBAFOMrML._SL1500_.jpg"
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Widget Slider"),
        ),
        body: PageView.builder(
          controller: controller,
          itemCount: urls.length,
          itemBuilder: (context, index) => Center(child: MovieBox(urls[index])),
        ),
      ),
    );
  }
}
