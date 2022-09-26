import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviedp/resource/colors.dart';
import 'package:moviedp/resource/dimens.dart';

import 'homepage_section/banner_section_view.dart';
import 'homepage_section/best_actor_section.dart';
import 'homepage_section/check_movie_section.dart';
import 'homepage_section/horizontal_movie_listview.dart';
import 'homepage_section/showcase_section.dart';

class HomePage extends StatelessWidget {
  List<String> movieListTabBar = [
    "Action"
        "Romantic"
        "Horror"
        "comedy"
        "Drama"
  ];
  HomePage({
    Key? key,required this.movieListTabBar
  }) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161A20),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
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
                  SizedBox(height: marginLarge),
                  CheckMovieSection(),
                  SizedBox(height: marginLarge),
                  MovieTabBarSection(movieListTabBar: movieListTabBar,
                  ),
                  ShowCaseSection(),
                  SizedBox(
                    height: mediumMargin2X,
                  ),
                  Container(
                      height: bestActorContainerHeight,
                      color: homeScreenBackground,
                      child: BestActorSection()),
                  SizedBox(
                    height: mediumMargin2X,
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class MovieTabBarSection extends StatelessWidget {
  const MovieTabBarSection({
    Key? key,required this.movieListTabBar,
  }) : super(key: key);

  final List<String> movieListTabBar;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        DefaultTabController(
            length: movieListTabBar.length,
            child: TabBar(
              isScrollable: true,
              indicatorColor: playButtonColor,
              unselectedLabelColor: Colors.white,
              tabs: movieListTabBar.map(
                      (movieListTabBar) => Tab(child: Text(movieListTabBar)
                        ),
              ).toList()
            )
        ),
        Container(
          padding: EdgeInsets.only(top: mediumMargin2X,bottom: marginLarge),
           color: homeScreenBackground,
            child: HorizontalMovieListView()),
      ],
    );
  }
}
