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
        // Positioned.fill(child: BannerGradientView()),
        // Align(
        //   alignment: Alignment.bottomLeft,
        //   child: BannerTextView(),
        // ),
        // Align(
        //   alignment: Alignment.center,
        //   child: BannerIconView(),
        // ),
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
      "https://scontent-cgk1-1.xx.fbcdn.net/v/t39.30808-6/321630558_3366220273617467_5719541007477120566_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=So1AoS9qBO4AX_pAbTS&_nc_ht=scontent-cgk1-1.xx&oh=00_AfBa8NZoUkUnxifue8b_NDQ8HAw1OENgBywNMeq-d_VWzQ&oe=63ECF5FB",
      //"https://www.commonsensemedia.org/sites/default/files/styles/ratio_16_9_large/public/screenshots/csm-movie/x-men-ss3-0-min.jpg",
      fit: BoxFit.cover,
      height: 300,
    );
  }
}
