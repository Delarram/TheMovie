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
                  "https://cdn.pixabay.com/photo/2012/08/27/22/59/movie-projector-55122__340.png",
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: mediumMargin, vertical: mediumMargin),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CustomText(
                          text: "URI",
                          fontSize: textRegular2X,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFFFFFF),
                        ),
                        CustomText(
                          text: "15 December 2016",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400],
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}
