// import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviedp/pages/detailpage/detail_page.dart';
import 'package:moviedp/pages/homepage/home_page.dart';
import 'package:moviedp/resource/colors.dart';

import '../movieproduct/movie_product.dart';

class BottomNav extends StatefulWidget {
  final int? selectedIndex;

  const BottomNav({Key? key, this.selectedIndex = 0}) : super(key: key);
  @override
  _BottomNavState createState() => _BottomNavState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _BottomNavState extends State<BottomNav> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(movieListTabBar: []),
    MovieProduct(),
    DetailPage()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedIndex = widget.selectedIndex!;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161A20),
      key: _scaffoldKey,
      // appBar: AppBar(title: Text('home')),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:
      Container(
        margin:const  EdgeInsets.symmetric(horizontal: 40,vertical: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Container(
                  height: 35,width: 35,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/homeicon.jpg")
                      )
                  ),
                ),
                activeIcon: Container(
                  height: 35,width: 35,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/homeicon.jpg")
                      )
                  ),
                ),
                label: 'Home',
              ),

              BottomNavigationBarItem(
                icon:Container(
                  height: 35,width: 35,
                  decoration:const BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/homeicon.jpg")
                      )
                  ),
                ),
                activeIcon:Container(
                  height: 35,width: 35,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/homeicon.jpg")
                      )
                  ),
                ),
                label: 'Wishlist',
              ),
            ],
            backgroundColor: Colors.white,
            elevation: 8,
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xff333333),
            selectedFontSize: 10,
            unselectedFontSize: 10,
            iconSize: 20,
            selectedLabelStyle:
                GoogleFonts.poppins(fontWeight: FontWeight.w500),
            unselectedLabelStyle:
                GoogleFonts.poppins(fontWeight: FontWeight.w500),
            onTap: _onItemTapped,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            _onItemTapped;
          });
        },
        child: Container(
            decoration: const BoxDecoration(
              color: Colors.amber
            ),
          child: const Icon(Icons.home_rounded),
        ),
      ),
    );
  }
}
