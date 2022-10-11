import 'package:flutter/material.dart';

import '../../../resource/dimens.dart';
import '../../../resource/string.dart';
import '../../viewitem/movie_view.dart';
import '../homewidgets/movie_list_title.dart';

class HorizontalMovieListView extends StatelessWidget {
  const HorizontalMovieListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: mediumMargin,
        ),
        SizedBox(
          height: movieListHeight,
          child: ListView.separated(
            padding: const EdgeInsets.only(left: mediumMargin2X),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(
              width: 1,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return const MovieView(
                imageLink:
                'https://m.media-amazon.com/images/I/51SDrub-uRL._AC_SY1000_.jpg',
              );
            },
          ),
        ),
      ],
    );
  }
}