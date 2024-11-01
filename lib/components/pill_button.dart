import 'package:flutter/material.dart';

class PillButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback onPressed;

  const PillButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 70,
        margin: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(100),
        ),
        alignment: Alignment.centerLeft,
        child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
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
        ),
      ),
    );
  }
}
