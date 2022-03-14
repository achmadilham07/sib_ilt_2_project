import 'package:flutter/material.dart';

// state_management: add ChangeNotifier to manage a state
class NumberProvider extends ChangeNotifier {
  int _number = 0;

  // TODO: add the public number variable so other class can access it

  void increment() {
    // TODO: do the increment process, don't forget to notify all widget
  }

  void decrement() {
    // TODO: do the decrement process, don't forget to notify all widget
  }
}
