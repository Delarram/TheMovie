import 'package:flutter/material.dart';
import '../../../resource/dimens.dart';

class TitleTextWithSeeMoreView extends StatelessWidget {
  final String titleText;
  final String seeMoreText;

  const TitleTextWithSeeMoreView(
      {Key? key, required this.titleText, required this.seeMoreText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleText,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: textRegular2X,
              color: Colors.grey[500]),
        ),
        Text(
          seeMoreText,
          style:  const TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: textRegular2X,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline),
        )
      ],
    );
  }
}
