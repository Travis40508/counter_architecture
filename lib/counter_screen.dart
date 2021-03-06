import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_view_model.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterViewModel>(
      builder: (_, viewModel, __) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Text('Counter'),
            centerTitle: true,
          ),
          body: Center(
            child: Text(
              viewModel.count.toString(),
              style: TextStyle(fontSize: 36.0),
            ),
          ),
          // this is weird, but just for example
          // thought FAB's had longpresses
          floatingActionButton: InkWell(
            onLongPress: () => viewModel.bigIncrement(),
            child: FloatingActionButton(
              onPressed: viewModel.increment,
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.add),
            ),
          ),
        );
      },
    );
  }
}
