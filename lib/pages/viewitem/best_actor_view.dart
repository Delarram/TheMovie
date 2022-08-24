import 'package:flutter/material.dart';
import 'package:moviedp/resource/colors.dart';
import 'package:moviedp/widgets/custom_text.dart';

import '../../resource/dimens.dart';

class BestActorView extends StatelessWidget {
  const BestActorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: bestActorItemWidth,
        color: Colors.yellow,
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.network(
              "https://www.hellokpop.com/wp-content/uploads/2020/06/Lee-Min-Ho.jpg",
              fit: BoxFit.cover,
            )),
            Positioned.fill(
                child: Container(
              decoration: BoxDecoration(gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    primaryColor,
                    primaryColor
                  ])),
            )),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.yellow,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mediumMargin, vertical: mediumMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText(
                      text: "Lee Min Ho",
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: mediumMargin,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_up,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: mediumMargin,
                        ),
                        CustomText(
                          text: "You Likes 12 movies",
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
