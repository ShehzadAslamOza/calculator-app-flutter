import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback onPressed;

  const CircleButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: buttonColor,
        shape: BoxShape.circle,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 28,
            fontWeight: FontWeight.w500,
            fontFamily: 'Helvetica',
          ),
        ),
      ),
    );
  }
}
