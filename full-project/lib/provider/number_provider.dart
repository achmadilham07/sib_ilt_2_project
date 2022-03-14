import 'package:flutter/material.dart';

// state_management: add ChangeNotifier to manage a state
class NumberProvider extends ChangeNotifier {
  int _number = 0;

  // add the public number variable so other class can access it
  int get number => _number;

  void increment() {
    // do the increment process, don't forget to notify all widget
    _number++;
    notifyListeners();
  }

  void decrement() {
    // do the decrement process, don't forget to notify all widget
    _number--;
    notifyListeners();
  }
}
