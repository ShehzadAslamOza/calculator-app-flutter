import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/components/display.dart';
import 'package:flutter_calculator_app/components/keypad.dart';
import 'package:flutter_calculator_app/screens/history_screen.dart'; // Import your HistoryScreen

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.history, color: Colors.white, size: 35),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HistoryScreen()),
              );
            },
          )
        ],
      ),
      body: Column(
        children: [
          const Spacer(),
          const Display(),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
            child: Keypad(),
          ),
        ],
      ),
    );
  }
}
