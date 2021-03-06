import 'package:counter_architecture/counter_screen.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App Architecture',
      home: CounterScreen(),
    );
  }
}
