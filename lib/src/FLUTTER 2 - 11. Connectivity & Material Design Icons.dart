import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Connection Checking"),
        ),
        body: Center(
          child:
              // FutureBuilder<ConnectivityResult>(
              //   future: Connectivity().checkConnectivity(),
              //   builder: (_, snapshot) => (snapshot.hasData)
              //       ? showConnectionStatus(snapshot.data!)
              //       : Text("Checking .."),
              // ),
              StreamBuilder<ConnectivityResult>(
            stream: Connectivity().onConnectivityChanged,
            builder: (_, snapshot) => (snapshot.hasData)
                ? showConnectionStatus(snapshot.data!)
                : Text("Checking .."),
          ),
        ),
      ),
    );
  }

  Icon showConnectionStatus(ConnectivityResult result) {
    if (result == ConnectivityResult.wifi) {
      return Icon(MdiIcons.wifi);
    } else if (result == ConnectivityResult.mobile) {
      return Icon(MdiIcons.signalCellular3);
    } else {
      return Icon(MdiIcons.airplane);
    }
  }
}
