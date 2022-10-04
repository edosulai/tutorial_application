import 'package:flutter/material.dart';
import 'dart:developer';

Widget makingText(String text, {double? fontSize}) {
  log('BUILDING TEXT: $text');
  return Text(
    text,
    style: TextStyle(fontSize: fontSize),
  );
}

Widget makingSpace(double height) {
  log('BUILDING SIZEDBOX: $height');
  return SizedBox(height: height);
}

Widget makingButton(String text, {void Function()? onPressed}) {
  log('BUILDING BUTTON: ${text.toString().toUpperCase()}');
  return Center(
    child: SizedBox(
      width: 100,
      child: ElevatedButton(onPressed: onPressed, child: makingText(text)),
    ),
  );
}
