import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/components/circle_button.dart';
import 'package:flutter_calculator_app/components/pill_button.dart';
import 'package:flutter_calculator_app/providers/calculator_provider.dart';
import 'package:provider/provider.dart';

class Keypad extends StatelessWidget {
  Keypad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calculator = context.read<CalculatorProvider>();

    final List<CircleButton> _layout = [
      CircleButton(
        text: "AC",
        textColor: Colors.black,
        buttonColor: const Color(0xFFa5a5a5),
        onPressed: calculator.clear,
      ),
      CircleButton(
        text: "+/-",
        textColor: Colors.black,
        buttonColor: const Color(0xFFa5a5a5),
        onPressed: () => calculator.toggleSign(),
      ),
      CircleButton(
        text: "%",
        textColor: Colors.black,
        buttonColor: const Color(0xFFa5a5a5),
        onPressed: () => calculator.addOperator('%'),
      ),
      CircleButton(
        text: "÷",
        textColor: Colors.white,
        buttonColor: const Color(0xFFff9f0a),
        onPressed: () => calculator.addOperator('/'),
      ),
      CircleButton(
        text: "7",
        textColor: Colors.white,
        buttonColor: const Color(0xFF333333),
        onPressed: () => calculator.inputNumber("7"),
      ),
      CircleButton(
        text: "8",
        textColor: Colors.white,
        buttonColor: const Color(0xFF333333),
        onPressed: () => calculator.inputNumber("8"),
      ),
      CircleButton(
        text: "9",
        textColor: Colors.white,
        buttonColor: const Color(0xFF333333),
        onPressed: () => calculator.inputNumber("9"),
      ),
      CircleButton(
        text: "x",
        textColor: Colors.white,
        buttonColor: const Color(0xFFff9f0a),
        onPressed: () => calculator.addOperator('*'),
      ),
      CircleButton(
        text: "4",
        textColor: Colors.white,
        buttonColor: const Color(0xFF333333),
        onPressed: () => calculator.inputNumber("4"),
      ),
      CircleButton(
        text: "5",
        textColor: Colors.white,
        buttonColor: const Color(0xFF333333),
        onPressed: () => calculator.inputNumber("5"),
      ),
      CircleButton(
        text: "6",
        textColor: Colors.white,
        buttonColor: const Color(0xFF333333),
        onPressed: () => calculator.inputNumber("6"),
      ),
      CircleButton(
        text: "—",
        textColor: Colors.white,
        buttonColor: const Color(0xFFff9f0a),
        onPressed: () => calculator.addOperator('-'),
      ),
      CircleButton(
        text: "1",
        textColor: Colors.white,
        buttonColor: const Color(0xFF333333),
        onPressed: () => calculator.inputNumber("1"),
      ),
      CircleButton(
        text: "2",
        textColor: Colors.white,
        buttonColor: const Color(0xFF333333),
        onPressed: () => calculator.inputNumber("2"),
      ),
      CircleButton(
        text: "3",
        textColor: Colors.white,
        buttonColor: const Color(0xFF333333),
        onPressed: () => calculator.inputNumber("3"),
      ),
      CircleButton(
        text: "+",
        textColor: Colors.white,
        buttonColor: const Color(0xFFff9f0a),
        onPressed: () => calculator.addOperator('+'),
      ),
    ];

    final List<Widget> _bottomRow = [
      PillButton(
        text: "0",
        textColor: Colors.white,
        buttonColor: const Color(0xFF333333),
        onPressed: () => calculator.inputNumber("0"),
      ),
      CircleButton(
        text: ".",
        textColor: Colors.white,
        buttonColor: const Color(0xFF333333),
        onPressed: () => calculator.inputNumber("."),
      ),
      CircleButton(
        text: "=",
        textColor: Colors.white,
        buttonColor: const Color(0xFFff9f0a),
        onPressed: calculator.calculate,
      ),
    ];

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemCount: _layout.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return _layout[index];
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: _bottomRow[0],
              ),
              Expanded(
                child: _bottomRow[1],
              ),
              Expanded(
                child: _bottomRow[2],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
