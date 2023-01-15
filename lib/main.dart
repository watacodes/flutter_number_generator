import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './range_selector_page.dart';
import './randomizer_page.dart';
import './randomizer_change_notifier.dart';

void main() {
  runApp(AppWidget());
}

final randomizerProvider =
    ChangeNotifierProvider((ref) => RandomizerChangeNotifier());

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
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
