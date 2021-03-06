import 'package:flutter/foundation.dart';

class CounterViewModel extends ChangeNotifier {
  // 2 types of tests (for now) UI && Unit
  // UI tests test the UI, unit tests test logic in view model
  // the test you'll do the most of are unit tests

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

  void bigIncrement() {
    count += 5;
  }
}
