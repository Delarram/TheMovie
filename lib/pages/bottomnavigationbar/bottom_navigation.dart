// import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    Center(
      child: Text("Home"),
    ),
    MovieProduct(),
    Center(
      child: Text("Home"),
    ),
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
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      // appBar: AppBar(title: Text('home')),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        color: Colors.grey,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/homeicon.jpg")),
                activeIcon: ImageIcon(AssetImage("assets/images/homeicon.jpg")),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/homeicon.jpg"),
                ),
                activeIcon: ImageIcon(AssetImage("assets/images/homeicon.jpg")),
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/homeicon.jpg")),
                activeIcon: ImageIcon(AssetImage("assets/images/homeicon.jpg")),
                label: 'Wishlist',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            elevation: 8,
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xff333333),
            unselectedItemColor: Colors.grey,
            selectedFontSize: 15,
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
    );
  }
}
