import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/providers/calculator_provider.dart';
import 'package:flutter_calculator_app/screens/calculator_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CalculatorProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: CalculatorScreen(),
      ),
    );
  }
}
