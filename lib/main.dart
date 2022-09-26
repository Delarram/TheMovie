import 'package:flutter/material.dart';
import 'package:moviedp/pages/bottomnavigationbar/bottom_navigation.dart';
import 'package:moviedp/pages/homepage/home_page.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav()
    );
  }
}


