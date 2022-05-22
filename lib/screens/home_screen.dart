import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/screens/ocr_page.dart';
import 'package:flutter_travel_ui/screens/todoList_screen.dart';
import 'package:flutter_travel_ui/widgets/destination_carousel.dart';
import 'package:flutter_travel_ui/widgets/hotel_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../login/login_main.dart';
import '../login/page/logged_in_widget.dart';
import '../weather/weather_main.dart';
import 'home_main_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final user = FirebaseAuth.instance.currentUser;
  List<IconData> _icons = [
    FontAwesomeIcons.globeAsia,
    FontAwesomeIcons.camera,
    FontAwesomeIcons.temperatureArrowUp,
    FontAwesomeIcons.solidListAlt,
  ];

  List<Widget> _widgetOptions = <Widget>[HomeMainScreen(), LoggedInWidget()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage(user.photoURL) ??
                  NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),
            ),
            label: 'Profile',
          )
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
