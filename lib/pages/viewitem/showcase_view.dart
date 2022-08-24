import 'package:flutter/material.dart';
import 'package:moviedp/resource/dimens.dart';
import 'package:moviedp/widgets/custom_text.dart';

class ShowCaseView extends StatelessWidget {
  const ShowCaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(right: mediumMargin2X),
        width: 200,
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.network(
              "data:image/jpeg;base64,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",
              fit: BoxFit.cover,
            )),
            const Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.play_circle,
                size: 50,
                color: Colors.yellow,
              ),
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mediumMargin, vertical: mediumMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomText(
                        text: "URI",
                        fontSize: textRegular2X,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFFFFFF),
                      ),
                      CustomText(
                        text: "15 December 2016",
                        fontSize: textRegular,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
