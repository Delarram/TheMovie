import 'package:flutter/material.dart';
import 'package:moviedp/pages/viewitem/banner_section.dart';
import 'package:moviedp/pages/viewitem/movie_view.dart';
import 'package:moviedp/resource/colors.dart';
import 'package:moviedp/resource/dimens.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          child: Column(
            children: [
             const BannerSectionView(),
              Container(
                height:movieListHeight,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 5,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const MovieView();
                  },
                ),
              ),
            ],
          )),
    );
  }
}

class BannerSectionView extends StatelessWidget {
  const BannerSectionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      child: PageView(
        children: const [
          BannerView(),
          BannerView(),
        ],
      ),
    );
  }
}
