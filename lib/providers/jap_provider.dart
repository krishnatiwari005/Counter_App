import 'package:flutter/material.dart';

class JapProvider extends ChangeNotifier {
  int count = 0;
  int mala = 0;

  void increment() {
    count++;
    if (count % 108 == 0) {
      mala++;
    }
    notifyListeners();
  }
}
