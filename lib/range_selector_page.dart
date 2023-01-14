import 'package:flutter/material.dart';

import './range_selector_form.dart';
import 'randomizer_page.dart';

class RangeSelectorPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  RangeSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Select Range'),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RandomizerPage(),
              ),
            );
          }
        },
      ),
    );
  }
}
