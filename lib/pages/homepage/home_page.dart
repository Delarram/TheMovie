

import 'package:flutter/material.dart';
import 'package:moviedp/pages/viewitem/banner_section.dart';
import 'package:moviedp/resource/colors.dart';
import 'package:moviedp/resource/dimens.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("Discover",style: TextStyle(fontWeight: FontWeight.w700),),
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: mediumMargin),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        height: bannerContainerHeight,
        child: PageView(
          children: const [
              BannerView(),
            BannerView(),
          ],
        ),
      ),
    );
  }
}
