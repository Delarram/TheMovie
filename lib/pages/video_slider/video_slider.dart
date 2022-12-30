import 'package:flutter/material.dart';

class VideoImageSlider extends StatelessWidget {
  const VideoImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: SizedBox(
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
                   color: const Color(0xff353535),
                   child: ClipRRect(
                       borderRadius: BorderRadius.circular(12),
                       child: Image.network("https://thumbs.dreamstime.com/b/web-194366001.jpg")),
                 );
               }),
             ),
             Align(
               alignment: Alignment.bottomCenter,
               child: Container(
                 margin:const EdgeInsets.symmetric(vertical: 10),
                 height: 150,
                 child:  ListView.separated(
                     padding: const EdgeInsets.all(8),
                     scrollDirection: Axis.horizontal,
                     shrinkWrap: true,
                     itemBuilder: (context, index) {
                       return GestureDetector(
                           onTap: (){
                           },
                           child: Container(
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(7),
                                 border: Border.all(
                                   // color: (_position == index)?
                                   // Color(0xffF48FB1): Colors.transparent
                                 )
                             ),
                             child: ClipRRect(
                                 borderRadius: BorderRadius.circular(7),
                                 child: Image.network("https://images.everydayhealth.com/images/healthy-living/fitness/all-about-yoga-mega-722x406.jpg?w=1110"
                                   // imageLink + widget.imageList[index]
                                 )),
                           ));
                     },
                     separatorBuilder: (context, index) {
                       return const SizedBox(width: 5);
                     },
                     itemCount:5
                   // widget.imageList.length
                 ),
               ),
             ),
             Align(
               alignment: Alignment.topLeft,
               child: GestureDetector(
                 onTap: (){
                   Navigator.pop(context);
                 },
                 child:const  Padding(
                   padding: EdgeInsets.all(12.0),
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
