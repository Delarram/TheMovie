import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviedp/resource/colors.dart';
import 'package:moviedp/resource/dimens.dart';
import 'package:moviedp/widgets/custom_text.dart';

class BannerView extends StatelessWidget {
  const BannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: const [
          Positioned.fill(
            child: BannerImageView(),
          ),
          Positioned.fill(
              child: BannerGradientView()
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: BannerTextView(),
          ),
          Align(
            alignment: Alignment.center,
            child:
            BannerIconView(),
          ),
        ],
      ),
    );
  }
}

class BannerIconView extends StatelessWidget {
  const BannerIconView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.play_circle);
  }
}

class BannerTextView extends StatelessWidget {
  const BannerTextView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomText(
          text: "The XMan 2013",
          fontSize: textHeadingOne,
          fontWeight: FontWeight.w500,
          color: Color(0xffFFFFFF),
        ),
        CustomText(
          text: "Offical Trailer",
          fontSize: textHeadingOne,
          fontWeight: FontWeight.w500,
          color: Color(0xffFFFFFF),
        ),
      ],
    );
  }
}

class BannerGradientView extends StatelessWidget {
  const BannerGradientView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, primaryColor])),
          );
  }
}

class BannerImageView extends StatelessWidget {
  const BannerImageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://i.pinimg.com/originals/ee/50/de/ee50dec983d90280a90a40afbe5be29d.jpg",
      fit: BoxFit.cover,
    );
  }
}
