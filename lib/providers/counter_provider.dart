import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0;
  int get Count => _count;

  void incrementCount() {
    _count += 1;
    notifyListeners();
  }
}
