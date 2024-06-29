import 'package:flutter/material.dart';
import '';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color color;
  final Size size;
  const CustomButton(
      {required this.onPressed,
      required this.child,
      required this.color,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
        style:
            ElevatedButton.styleFrom(backgroundColor: color, minimumSize: size),
      ),
    );
  }
}
