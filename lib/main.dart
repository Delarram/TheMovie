import 'package:flutter/material.dart';
import 'package:moviedp/network/post_method_api.dart';
import 'package:moviedp/pages/bottomnavigationbar/bottom_navigation.dart';
import 'package:moviedp/pages/homepage/home_page.dart';
import 'package:moviedp/pages/video_slider/video_slider.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoImageSlider()
    );
  }
}


