// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../login/Screens/login/login.dart';
import '../login/login_main.dart';

class ResponsiveButton extends StatelessWidget {
  bool isResponsive;
  double width;
  ResponsiveButton({this.isResponsive = false, this.width});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => LoginMainScreen()))),
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF5B67BE),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/img/button-one.png"),
          ],
        ),
      ),
    );
  }
}
