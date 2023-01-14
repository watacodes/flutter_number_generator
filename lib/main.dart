import 'package:flutter/material.dart';
import './range_selector_page.dart';
import './randomizer_page.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Number Generator',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: RangeSelectorPage(),
    );
  }
}
