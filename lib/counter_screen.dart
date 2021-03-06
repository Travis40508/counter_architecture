import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '1',
          style: TextStyle(fontSize: 36.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('boop'),
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}
