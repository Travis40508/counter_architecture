import 'package:counter_architecture/counter_screen.dart';
import 'package:counter_architecture/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App Architecture',
      home: ChangeNotifierProvider(
        create: (_) => CounterViewModel(),
        child: CounterScreen(),
      ),
    );
  }
}
