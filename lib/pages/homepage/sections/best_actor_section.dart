import 'package:flutter/material.dart';

import '../../../resource/dimens.dart';
import '../../../resource/string.dart';
import '../../viewitem/best_actor_view.dart';
import '../homewidgets/title_text_with_see_more_view.dart';

class BestActorSection extends StatelessWidget {
  const BestActorSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: mediumMargin2X, vertical: mediumMargin),
          child: TitleTextWithSeeMoreView(
              titleText: bestActorTitle, seeMoreText: bestActorSeeMore),
        ),
        Container(
          height: bestActorHeight,
          child: ListView.separated(
            padding: EdgeInsets.only(left: mediumMargin),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return BestActorView();
            },
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 5,
              );
            },
          ),
        )
      ],
    );
  }
}