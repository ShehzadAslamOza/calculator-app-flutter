import 'package:flutter/material.dart';

class CalculatorProvider extends ChangeNotifier {
  String _display = '0';
  String _operator = '';
  double _firstOperand = 0.0;
  double _secondOperand = 0.0;
  bool _waitingForSecondOperand = false;

  List<String> _history = [];

  String get display => _display;
  List<String> get history => List.unmodifiable(_history);

  void inputNumber(String number) {
    if (_display == '0' || _waitingForSecondOperand) {
      _display = number;
      _waitingForSecondOperand = false;
    } else {
      _display += number;
    }
    notifyListeners();
  }

  void clear() {
    _display = '0';
    _firstOperand = 0.0;
    _secondOperand = 0.0;
    _operator = '';
    _waitingForSecondOperand = false;
    notifyListeners();
  }

  void toggleSign() {
    if (_display != '0') {
      _display =
          _display.startsWith('-') ? _display.substring(1) : '-$_display';
      notifyListeners();
    }
  }

  void addOperator(String operator) {
    if (operator == '%') {
      double currentNumber = double.tryParse(_display) ?? 0.0;
      _display = (currentNumber / 100).toString();
      notifyListeners();
    } else {
      _firstOperand = double.tryParse(_display) ?? 0.0;
      _operator = operator;
      _waitingForSecondOperand = true;
    }
  }

  void inputDecimal() {
    if (!_display.contains('.')) {
      _display += '.';
    }
    notifyListeners();
  }

  void calculate() {
    _secondOperand = double.tryParse(_display) ?? 0.0;
    double result;

    switch (_operator) {
      case '+':
        result = _firstOperand + _secondOperand;
        break;
      case '-':
        result = _firstOperand - _secondOperand;
        break;
      case '*':
        result = _firstOperand * _secondOperand;
        break;
      case '/':
        if (_secondOperand == 0) {
          _display = 'Error';
          notifyListeners();
          return;
        }
        result = _firstOperand / _secondOperand;
        break;
      default:
        return;
    }

    _history.add("$_firstOperand $_operator $_secondOperand = $result");

    _display = result.toString();
    _firstOperand = result;
    _secondOperand = 0.0;
    _waitingForSecondOperand = true;
    _operator = '';
    notifyListeners();
  }

  void clearHistory() {
    _history.clear();
    notifyListeners();
  }
}
