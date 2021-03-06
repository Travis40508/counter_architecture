import 'package:counter_architecture/counter_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  CounterViewModel _viewModel;

  // is ran before each individual test in this file
  setUp(() {
    _viewModel = CounterViewModel();
  });

  // is ran before ALL tests
  setUpAll(() {
    // not doing anything
  });

  // runs AFTER each individual test
  tearDown(() {
    // not doing anything
  });

  // ran after all the tests (once)
  tearDownAll(() {
    // not doing anything
  });

  group('incrementing', () {
    test('test incrementing once', () {
      _viewModel.increment();

      expect(_viewModel.count, 1);
    });

    test('test incrementing twice', () {
      _viewModel.increment();
      _viewModel.increment();

      expect(_viewModel.count, 2);
    });

    test('test incrementing three times', () {
      _viewModel.increment();
      _viewModel.increment();
      _viewModel.increment();

      expect(_viewModel.count, 3);
    });
  });

  group('big increment', () {
    test('goes up by 5', () {
      _viewModel.bigIncrement();

      expect(_viewModel.count, 5);
    });
  });

  group('both', () {
    test('small press x3, long press x4', () {
      _viewModel.increment();
      _viewModel.increment();
      _viewModel.increment();

      _viewModel.bigIncrement();
      _viewModel.bigIncrement();
      _viewModel.bigIncrement();
      _viewModel.bigIncrement();

      expect(_viewModel.count, 23);
    });
  });
}
