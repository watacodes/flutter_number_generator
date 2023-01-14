import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './range_selector_page.dart';
import './randomizer_page.dart';
import './randomizer_change_notifier.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RandomizerChangeNotifier(),
      child: MaterialApp(
        title: 'Random Number Generator',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: RangeSelectorPage(),
      ),
    );
  }
}
