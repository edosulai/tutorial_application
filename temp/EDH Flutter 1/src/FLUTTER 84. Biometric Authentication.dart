import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isAvailable = false;
  bool isAuthenticated = false;
  String text = "Please Check Biometric Available";
  LocalAuthentication localAuthentication = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Biometic Authentication")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 200,
                margin: EdgeInsets.only(bottom: 6),
                child: RaisedButton(
                  onPressed: () async {
                    isAvailable = await localAuthentication.canCheckBiometrics;

                    if (isAvailable) {
                      List<BiometricType> types =
                          await localAuthentication.getAvailableBiometrics();
                      text = "Biometrics Available";
                      for (var item in types) {
                        text += "\n- $item";
                      }
                      setState(() {});
                    }
                  },
                  child: Text(
                    "Check Biometrics",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                child: RaisedButton(
                  onPressed: isAvailable
                      ? () async {
                          isAuthenticated = await localAuthentication
                              .authenticateWithBiometrics(
                            localizedReason: "Please Authenticated",
                            stickyAuth: true,
                            useErrorDialogs: true,
                          );
                          setState(() {});
                        }
                      : null,
                  child: Text(
                    "Authenticate",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isAuthenticated ? Colors.green : Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3,
                      spreadRadius: 2,
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.grey[200],
                child: Center(
                  child: Text(
                    text,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
