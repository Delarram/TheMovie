import 'package:flutter/material.dart';

import 'custom_radio_button.dart';

class RadioTest extends StatefulWidget {
  const RadioTest({Key? key}) : super(key: key);
  @override
  State<RadioTest> createState() => _RadioTestState();
}

double _value = 1.0;

class _RadioTestState extends State<RadioTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: MyRadioListTile<double>(
              value: 1.0,
              groupValue: _value,
              leading: 'FeedBack',
              onChanged: (value) => setState(() => _value = value!),
            ),
          ),
          Expanded(
            child: MyRadioListTile<double>(
              value: 2.0,
              groupValue: _value,
              leading: 'Share',
              onChanged: (value) => setState(() => _value = value!),
            ),
          ),
        ],
      ),
    );
  }
}
