import 'package:flutter/material.dart';

import '../../../resource/dimens.dart';
import '../../../resource/string.dart';
import '../../viewitem/showcase_view.dart';
import '../homewidgets/title_text_with_see_more_view.dart';

class ShowCaseSection extends StatelessWidget {
  const ShowCaseSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
              horizontal: mediumMargin2X, vertical: mediumMargin),
          child: TitleTextWithSeeMoreView(
              titleText: showCaseTitle, seeMoreText: showCaseSeeMore),
        ),
        SizedBox(
          height: showcaseHeight,
          child: ListView(
            padding: const EdgeInsets.only(left: mediumMargin2X),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: const [
              ShowCaseView(),
              ShowCaseView(),
              ShowCaseView(),
              ShowCaseView(),
            ],
          ),
        )
      ],
    );
  }
}
