import 'package:flutter/material.dart';

class RotatingContainer extends AnimatedWidget {
  const RotatingContainer({Key key, Animation<double> doubleAnimation})
      : super(key: key, listenable: doubleAnimation);

  @override
  Widget build(BuildContext context) {
    Animation<double> animation = listenable as Animation<double>;

    return Transform.rotate(
      angle: animation.value,
      child: Container(
        width: 50,
        height: 50,
        color: Colors.red,
      ),
    );
  }
}
