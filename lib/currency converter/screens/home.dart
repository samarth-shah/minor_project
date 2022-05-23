import 'package:flutter/material.dart';

import '../services/currency.dart';

class HomePageC extends StatefulWidget {
  @override
  _HomePageCState createState() => _HomePageCState();
}

class _HomePageCState extends State<HomePageC> {
  @override
  Widget build(BuildContext context) {
    CurrencyService().convertCurrency(
        fromCurrency: 'USD',
        toCurrency: 'INR',
        amount: 1,
        context: context,
        isWhite: false);

    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/icon.png'),
          radius: 75.0,
        ),
      ),
    );
  }
}
