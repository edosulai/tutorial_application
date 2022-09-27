import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final int amount = 1000000;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[600],
          title: Text("Currency Format"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "normal",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
              ),
              Text(
                amount.toString(),
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.pink[700],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "currency",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
              ),
              Text(
                NumberFormat.currency(
                  locale: 'id',
                  symbol: 'Rp ',
                  decimalDigits: 0,
                ).format(amount),
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.pink[700],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "compact currency",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
              ),
              Text(
                NumberFormat.compactCurrency(
                  locale: 'id',
                  decimalDigits: 0,
                ).format(amount + 350000),
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.pink[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
