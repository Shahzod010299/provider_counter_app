import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier {
  int counter = 0;

  decrement() {
    counter--;
    notifyListeners();
  }

  increment() {
    counter ++;
    notifyListeners();
  }

}