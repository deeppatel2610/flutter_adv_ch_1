import 'package:flutter/material.dart';

class StepperProvider extends ChangeNotifier {
  int count = 0;

  void addCount() {
    if (count < 2) {
      count++;
    }
    notifyListeners();
  }

  void removeCount() {
    if (count > 0) {
      count--;
    }
    notifyListeners();
  }
}
