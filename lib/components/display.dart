import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/providers/calculator_provider.dart';
import 'package:provider/provider.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final displayText = context.watch<CalculatorProvider>().display;
    return Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.only(right: 35),
      child: Text(
        displayText,
        style: const TextStyle(
          fontSize: 70,
          color: Colors.white,
          fontFamily: 'Helvetica',
        ),
      ),
    );
  }
}
