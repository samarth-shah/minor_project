// ignore_for_file: deprecated_member_use

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/budgetTracker/budget_main.dart';
import 'package:flutter_travel_ui/screens/ocr_page.dart';
import 'package:flutter_travel_ui/screens/todoList_screen.dart';
import 'package:flutter_travel_ui/widgets/destination_carousel.dart';
import 'package:flutter_travel_ui/widgets/hotel_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../weather/weather_main.dart';

class HomeMainScreen extends StatefulWidget {
  @override
  _HomeMainScreenState createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  int _selectedIndex = 0;
  final user = FirebaseAuth.instance.currentUser;
  List<IconData> _icons = [
    FontAwesomeIcons.globeAsia,
    FontAwesomeIcons.camera,
    FontAwesomeIcons.temperatureArrowUp,
    FontAwesomeIcons.solidListAlt,
    FontAwesomeIcons.moneyBill,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        if (index == 2) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Weather()));
        }
        if (index == 1) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => OCRScreen()));
        }
        if (index == 3) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => TodoList()));
        }
        if (index == 4) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => BudgetTracker()));
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
    );
  }
}
