import 'package:flutter/foundation.dart';

class CounterViewModel extends ChangeNotifier {
  // give it a default value
  int _count = 0;

  int get count => _count;

  set count(int value) {
    _count = value;
    notifyListeners();
  }

  void increment() {
    // same as count = count + 1
    count += 1;
  }
}
