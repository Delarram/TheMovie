import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviedp/resource/colors.dart';
import 'package:moviedp/resource/dimens.dart';
import 'package:provider/provider.dart';

import '../../bloc/now_playing_bloc.dart';
import 'homepage_section/banner_section_view.dart';
import 'homepage_section/best_actor_section.dart';
import 'homepage_section/check_movie_section.dart';
import 'homepage_section/horizontal_movie_listview.dart';
import 'homepage_section/showcase_section.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,required this.movieListTabBar
  }) : super(key: key,);

  List<String> movieListTabBar = [
      "Action"
        "Romantic"
        "Horror"
        "comedy"
        "Drama"
  ];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NowPlayingBloc>(
      create: (BuildContext context) => NowPlayingBloc(),
    child: Consumer<NowPlayingBloc>(builder: (context, bloc, child){
      return Scaffold(
        backgroundColor:const Color(0xff161A20),
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
                    const BannerSectionView(),
                   const  SizedBox(height: marginLarge),
                    const HorizontalMovieListView(),
                    const SizedBox(height: marginLarge),
                   const CheckMovieSection(),
                    const SizedBox(height: marginLarge),
                    MovieTabBarSection(movieListTabBar: movieListTabBar,
                    ),
                    const ShowCaseSection(),
                    const SizedBox(
                      height: mediumMargin2X,
                    ),
                    Container(
                        height: bestActorContainerHeight,
                        color: homeScreenBackground,
                        child: const BestActorSection()),
                    const SizedBox(
                      height: mediumMargin2X,
                    )
                  ],
                ),
              ),
            )),
      );
    }),
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
