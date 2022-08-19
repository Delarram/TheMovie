import 'package:flutter/material.dart';

import '../../../resource/dimens.dart';

class MovieListTitle extends StatelessWidget {
        final String text;
  const MovieListTitle({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: textRegular2X,
        color: Colors.grey[400]
    ),);
  }
}
