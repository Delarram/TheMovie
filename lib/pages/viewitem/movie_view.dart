import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:moviedp/resource/dimens.dart';
import 'package:moviedp/widgets/custom_text.dart';

class MovieView extends StatelessWidget {
  const MovieView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: mediumMargin2X),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: CachedNetworkImage(
                height: 160,
                fit: BoxFit.cover,
                imageUrl:
                'https://m.media-amazon.com/images/I/51SDrub-uRL._AC_SY1000_.jpg',
                errorWidget: (
                    context,
                    url,
                    error,
                    ) =>
                const Icon(Icons.error),
                progressIndicatorBuilder: (
                    context,
                    url,
                    downloadProgress,
                    ) =>
                    Center(
                      child: CircularProgressIndicator(
                          value: downloadProgress.progress),
                    ),
              )),
         const  CustomText(text: "World Dragon III",fontSize: textRegular,)
        ],
      ),
    );
  }
}
