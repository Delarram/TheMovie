import 'package:flutter/material.dart';

class SeeMoreText extends StatelessWidget {
  final String text;
  const SeeMoreText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Color(0xffFFFFFF),
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline),
    );
  }
}
