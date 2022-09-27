
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Latihan Stack dan Align")),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1, child: Container(color: Colors.white)),
                        Flexible(
                            flex: 1, child: Container(color: Colors.black12))
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1, child: Container(color: Colors.black12)),
                        Flexible(flex: 1, child: Container(color: Colors.white))
                      ],
                    ))
              ],
            ),
            ListView(children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                        "Ini dalah text yang ada di lapisan tengah dari Stack.",
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                        "Ini dalah text yang ada di lapisan tengah dari Stack.",
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                        "Ini dalah text yang ada di lapisan tengah dari Stack.",
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                        "Ini dalah text yang ada di lapisan tengah dari Stack.",
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                        "Ini dalah text yang ada di lapisan tengah dari Stack.",
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                        "Ini dalah text yang ada di lapisan tengah dari Stack.",
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                        "Ini dalah text yang ada di lapisan tengah dari Stack.",
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                        "Ini dalah text yang ada di lapisan tengah dari Stack.",
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                        "Ini dalah text yang ada di lapisan tengah dari Stack.",
                        style: TextStyle(fontSize: 30)),
                  ),
                ],
              )
            ]),
            const Align(
              alignment: Alignment(0.9, 0.9),
              child: RaisedButton(
                color: Colors.amber,
                onPressed: null,
                child: Text("My Button"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
