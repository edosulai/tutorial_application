import 'package:flutter/material.dart';
import 'package:tutorial_application/views/FLUTTER%2025.%20Hero%20&%20ClipRRect%20Widget%20(second%20page).dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Latihan Media Query",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: const SizedBox(
              width: 100,
              height: 100,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://inikpop.com/wp-content/uploads/2018/12/jennie.jpg",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
