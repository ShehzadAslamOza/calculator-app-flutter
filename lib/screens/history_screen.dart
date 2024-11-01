import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/providers/calculator_provider.dart';
import 'package:provider/provider.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final calculator = context.watch<CalculatorProvider>();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("History"),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => calculator.clearHistory(),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: calculator.history.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(calculator.history[index]),
          );
        },
      ),
    );
  }
}
