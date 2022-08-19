import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:moviedp/resource/dimens.dart';
import 'package:moviedp/widgets/custom_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MovieView extends StatelessWidget {
  const MovieView({Key? key, required this.imageLink}) : super(key: key);

  final String imageLink;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: mediumMargin2X),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                height: 160,
                fit: BoxFit.cover,
                imageUrl: imageLink,
                errorWidget: (
                  context,
                  url,
                  error,
                ) => const Icon(Icons.error), progressIndicatorBuilder: (context, url, downloadProgress,) =>
                    Center(
                  child: CircularProgressIndicator(
                      value: downloadProgress.progress),
                ),
              )),
          const CustomText(
            text: "World Dragon III",
            fontSize: textRegular,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(
            height: mediumMargin,
          ),
          Row(
            children: [
              const CustomText(
                text: "9.9",
                fontSize: mediumMargin,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                width: mediumMargin,
              ),
              RatingBar.builder(
                initialRating: 5.0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding:
                    const EdgeInsets.symmetric(horizontal: smallMargin),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemSize: mediumMargin,
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
