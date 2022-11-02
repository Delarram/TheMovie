import 'package:flutter/material.dart';

class VideoImageSlider extends StatelessWidget {
  const VideoImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Container(
         height: MediaQuery.of(context).size.height,
         width:  MediaQuery.of(context).size.width,
         child: Stack(
           children: [
             Align(
               alignment: Alignment.center,
               child: PageView.builder(
                   itemCount: 5,
                   itemBuilder: (BuildContext context,int itemIndex){
                 return Container(
                   padding: const EdgeInsets.all(8),
                   color: Color(0xff353535),
                   child: ClipRRect(
                       borderRadius: BorderRadius.circular(12),
                       child: Image.network("https://thumbs.dreamstime.com/b/web-194366001.jpg")),
                 );
               }),
             ),
             Align(
               alignment: Alignment.topLeft,
               child: GestureDetector(
                 onTap: (){
                   Navigator.pop(context);
                 },
                 child: Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Align(
                     alignment:Alignment.topLeft,
                     child: Icon(
                       Icons.close_rounded,
                       color: Color(0xffFFFFFF),
                       size: 30,
                     ),
                   ),
                 ),
               ),
             ),
           ],
         ),
       ),
     ),
    );
  }
}
