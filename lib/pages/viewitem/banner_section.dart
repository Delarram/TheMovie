import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviedp/resource/dimens.dart';
import 'package:moviedp/widgets/custom_text.dart';

class BannerView extends StatelessWidget {
  const BannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://i.pinimg.com/originals/ee/50/de/ee50dec983d90280a90a40afbe5be29d.jpg",
              fit: BoxFit.cover,
            ),
          ),
         Align(
           alignment: Alignment.bottomLeft,
           child: Column(
             children: const [
               CustomText(text: "The XMan 2013",
                 fontSize:textHeadingOne,
                 fontWeight: FontWeight.w500,
                 color: Color(0xffFFFFFF),
               ),
               CustomText(text: "Offical Trailer",
               fontSize: textHeadingOne,
                 fontWeight: FontWeight.w500,
               color: Color(0xffFFFFFF),
               ),
             ],
           ),
         ),
          Align(
            child: Icon(
              Icons.play_circle
            ),
          )
        ],
      ),
    );
  }
}
