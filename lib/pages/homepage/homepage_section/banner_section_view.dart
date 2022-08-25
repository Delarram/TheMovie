
import 'package:flutter/material.dart';

import '../../viewitem/banner_view.dart';
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