import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/currency%20converter/screens/home.dart';

class CurrencyConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: HomePageC());
  }
}
