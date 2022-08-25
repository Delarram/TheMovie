import 'package:flutter/material.dart';

class SeeMoreText extends StatelessWidget {
  final String text;
  final Color? color;
  const SeeMoreText({Key? key, required this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(
          color: color,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline),
    );
  }
}
