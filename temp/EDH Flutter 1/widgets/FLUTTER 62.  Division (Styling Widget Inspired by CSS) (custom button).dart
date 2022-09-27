import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_application/styles/FLUTTER%2062.%20%20Division%20(Styling%20Widget%20Inspired%20by%20CSS)%20(custom%20style).dart';

class CustomButton extends StatefulWidget {
  final ParentStyle buttonStyle;

  const CustomButton(this.buttonStyle);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isTapDown = false;

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: widget.buttonStyle.clone()
        ..scale(isTapDown ? 1.1 : 1)
        ..elevation(isTapDown ? 0 : 5),
      gesture: Gestures()
        ..onTapDown((details) {
          setState(() {
            isTapDown = true;
          });
        })
        ..onTapUp((details) {
          setState(() {
            isTapDown = false;
          });
        })
        ..onTapCancel(() {
          setState(() {
            isTapDown = false;
          });
        }),
      child: Container(
        child: Txt(
          "division",
          style: CustomStyles.txtStyle,
        ),
      ),
    );
  }
}
