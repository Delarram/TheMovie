import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviedp/pages/homepage/homewidgets/movie_list_title.dart';
import 'package:moviedp/pages/viewitem/banner_section.dart';
import 'package:moviedp/pages/viewitem/movie_view.dart';
import 'package:moviedp/resource/colors.dart';
import 'package:moviedp/resource/dimens.dart';
import 'package:moviedp/resource/string.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161A20),
      appBar: AppBar(
        backgroundColor: pColor,
        title: const Text(
          "Discover",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: mediumMargin),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
          color: primaryColor,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   BannerSectionView(),
                  SizedBox(height: marginLarge),
                  HorizontalMovieListView(),
                  HorizontalMovieListView(),

                ],
              ),
            ),
          )),
    );
  }
}

class HorizontalMovieListView extends StatelessWidget {
  const HorizontalMovieListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: mediumMargin2X),
            child: MovieListTitle(
              text: mainScreenBestPopularAndSeries,
            )),
       const  SizedBox(
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

class BannerSectionView extends StatelessWidget {
  const BannerSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: PageView(
        children: const [
          BannerView(),
          BannerView(),
        ],
      ),
    );
  }
}
