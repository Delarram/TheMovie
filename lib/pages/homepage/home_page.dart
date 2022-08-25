import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviedp/pages/homepage/sections/banner_section_view.dart';
import 'package:moviedp/pages/homepage/sections/best_actor_section.dart';
import 'package:moviedp/pages/homepage/sections/horizontal_movie_listview.dart';
import 'package:moviedp/pages/homepage/sections/showcase_section.dart';
import 'package:moviedp/resource/colors.dart';
import 'package:moviedp/resource/dimens.dart';
import 'package:moviedp/resource/string.dart';
import 'package:moviedp/widgets/custom_text.dart';
import 'package:moviedp/widgets/see_more_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                  const BannerSectionView(),
                  const SizedBox(height: marginLarge),
                  const HorizontalMovieListView(),
                  const SizedBox(height: marginLarge),
                  Container(
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    height: 180,
                    margin: const EdgeInsets.symmetric(
                      horizontal: mediumMargin2X,
                    ),
                    padding: EdgeInsets.all(mediumMargin2X),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Check Movie\nShowtimes",
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: textHeading1X,
                            ),
                            Spacer(),
                            SeeMoreText(text: mainScreenSeeMore,color: Colors.amber,)
                          ],
                        ),
                        Icon(Icons.location_on_rounded,size: 50,color: Colors.white,)
                      ],
                    ),
                  ),
                  const SizedBox(height: marginLarge),
                  const HorizontalMovieListView(),
                  const ShowCaseSection(),
                  const SizedBox(
                    height: mediumMargin2X,
                  ),
                  BestActorSection(),
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
