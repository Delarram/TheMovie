import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviedp/pages/homepage/sections/banner_section_view.dart';
import 'package:moviedp/pages/homepage/sections/best_actor_section.dart';
import 'package:moviedp/pages/homepage/sections/horizontal_movie_listview.dart';
import 'package:moviedp/pages/homepage/sections/showcase_section.dart';
import 'package:moviedp/resource/colors.dart';
import 'package:moviedp/resource/dimens.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161A20),
      appBar: AppBar(
        centerTitle: true,
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
                  const BannerSectionView(),
                  const SizedBox(height: marginLarge),
                  const HorizontalMovieListView(),
                  const HorizontalMovieListView(),
                  const ShowCaseSection(),
                  const SizedBox(
                    height: mediumMargin2X,
                  ),
                  BestActorSection()
                ],
              ),
            ),
          )),
    );
  }
}
