import 'package:flutter/material.dart';
import 'package:moviedp/resource/colors.dart';
import 'package:moviedp/resource/dimens.dart';
import 'package:moviedp/widgets/custom_text.dart';

class BannerView extends StatelessWidget {
  const BannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Positioned.fill(
          child: BannerImageView(),
        ),
        Positioned.fill(child: BannerGradientView()),
        Align(
          alignment: Alignment.bottomLeft,
          child: BannerTextView(),
        ),
        Align(
          alignment: Alignment.center,
          child: BannerIconView(),
        ),
      ],
    );
  }
}

class BannerIconView extends StatelessWidget {
  const BannerIconView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.play_circle,
      size: 50,
    );
  }
}

class BannerTextView extends StatelessWidget {
  const BannerTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomText(
          text: "The XMan 2013",
          fontSize: textHeading1X,
          fontWeight: FontWeight.w500,
          color: Color(0xffFFFFFF),
        ),
        CustomText(
          text: "Official Trailer",
          fontSize: textHeading1X,
          fontWeight: FontWeight.w500,
          color: Color(0xffFFFFFF),
        ),
      ],
    );
  }
}

class BannerGradientView extends StatelessWidget {
  const BannerGradientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.transparent,
            primaryColor,
          ])),
    );
  }
}

class BannerImageView extends StatelessWidget {
  const BannerImageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://www.commonsensemedia.org/sites/default/files/styles/ratio_16_9_large/public/screenshots/csm-movie/x-men-ss3-0-min.jpg",
      fit: BoxFit.cover,
    );
  }
}
