import 'package:flutter/material.dart';

import '../../resource/dimens.dart';

class BestActorView extends StatelessWidget {
  const BestActorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: bestActorItemWidth,
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}
