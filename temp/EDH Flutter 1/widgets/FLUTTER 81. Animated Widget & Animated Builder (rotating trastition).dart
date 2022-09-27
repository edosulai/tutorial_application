import 'package:flutter/material.dart';

class RotationTranstition extends StatelessWidget {
  final Widget child;
  final Animation<double> doubleAnimation;

  const RotationTranstition({this.child, this.doubleAnimation});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: doubleAnimation,
      builder: (context, child) {
        return Transform.rotate(
          angle: doubleAnimation.value,
          child: child,
        );
      },
      child: child,
    );
  }
}
