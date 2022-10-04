import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Time Line Title Demo")),
        body: Column(
          children: [
            SizedBox(
              width: 100,
              height: 50,
              child: TimelineTile(
                // startChild: Text("START"),
                endChild: Text("First"),
                beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
                afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
                alignment: TimelineAlign.manual,
                lineXY: 0,
                isFirst: true,
              ),
            ),
            SizedBox(
              width: 100,
              child: TimelineDivider(
                thickness: 6,
                color: Colors.green,
                begin: 0.12,
                end: 0.88,
              ),
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: TimelineTile(
                // startChild: Text("..."),
                endChild: Text("Mid"),
                beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
                afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
                alignment: TimelineAlign.manual,
                lineXY: 1,
                indicatorStyle: IndicatorStyle(
                  color: Colors.purple,
                  width: 30,
                  height: 50,
                  indicator: Container(
                    width: 30,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  // iconStyle: IconStyle(iconData: Icons.ac_unit, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 100,
              child: TimelineDivider(
                thickness: 6,
                color: Colors.green,
                begin: 0.12,
                end: 0.88,
              ),
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: TimelineTile(
                // startChild: Text("START"),
                endChild: Text("End"),
                beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
                afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
                alignment: TimelineAlign.manual,
                lineXY: 0,
                isLast: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
