import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/screens/ocr_page.dart';
import 'package:flutter_travel_ui/screens/todoList_screen.dart';
import 'package:flutter_travel_ui/widgets/destination_carousel.dart';
import 'package:flutter_travel_ui/widgets/hotel_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../login/login_main.dart';
import '../login/page/logged_in_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final user = FirebaseAuth.instance.currentUser;
  
  int _currentTab = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.globeAsia,
    FontAwesomeIcons.camera,
    FontAwesomeIcons.microphoneAlt,
    FontAwesomeIcons.solidListAlt,
  ];


  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        if (index == 2) {
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => SpeechToTextScreen()));
        }
        if (index == 1) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => OCRScreen()));
        }
        if (index == 3) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => TodoList()));
        }

        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Trippy  -                   Trip Made Easy',
                style: TextStyle(
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(height: 20.0),
            DestinationCarousel(),
            SizedBox(height: 20.0),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
            if(value == 1 ){
              Navigator.push(context,MaterialPageRoute(builder: (context) => LoggedInWidget()));
            }
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
              backgroundImage:  NetworkImage(user.photoURL) ?? NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),
            ),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
