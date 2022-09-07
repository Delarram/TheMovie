import 'package:flutter/material.dart';

import '../../../resource/colors.dart';
import '../../../resource/dimens.dart';
import '../../../resource/string.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/see_more_text.dart';
class CheckMovieSection extends StatelessWidget {
  const CheckMovieSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: homeScreenBackground,
          borderRadius: BorderRadius.circular(10)
      ),
      height: checkMovieHeight,
      margin: const EdgeInsets.symmetric(
        horizontal: mediumMargin2X,
      ),
      padding: EdgeInsets.all(mediumMargin2X),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: mainScreenCheckMovie,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: textHeading1X,
              ),
              Spacer(),
              SeeMoreText(text: mainScreenSeeMore,color: Colors.amber,)
            ],
          ),
          Icon(Icons.location_on_rounded,size: 50,color: Colors.white,)
        ],
      ),
    );
  }
}