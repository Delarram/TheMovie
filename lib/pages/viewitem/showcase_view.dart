import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowCaseView extends StatelessWidget {
  const ShowCaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 300,
      color: Colors.cyanAccent,
    );
  }
}
