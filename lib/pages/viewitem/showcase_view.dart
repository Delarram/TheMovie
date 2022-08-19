import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviedp/resource/dimens.dart';
import 'package:moviedp/widgets/custom_text.dart';

class ShowCaseView extends StatelessWidget {
  const ShowCaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: mediumMargin2X),
        width: 240,
        color: Colors.cyanAccent,
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.network(
              "https://fr.web.img5.acsta.net/pictures/20/08/27/17/57/4484398.jpg",
              fit: BoxFit.cover,
            )),
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.play_circle,
                size: 50,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: CustomText(
                text: "Passangers",
                fontSize: textHeading1X,
                fontWeight: FontWeight.w500,
                color: Color(0xffFFFFFF),
              ),
            ),
          ],
        ));
  }
}
