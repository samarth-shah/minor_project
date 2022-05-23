import 'package:flutter/material.dart';

import '../shared/final_row.dart';
import '../shared/font_size.dart';
import '../shared/number_row.dart';

class RedInputPage extends StatefulWidget {

  final String originalCurrency; //USD
  final String convertedCurrency; //INR

  RedInputPage({ this.originalCurrency, this.convertedCurrency });

  @override
  _RedInputPageState createState() => _RedInputPageState();
}

class _RedInputPageState extends State<RedInputPage> {

  void updateCurrentInput(value) => setState(() => currentInput = value);

  int currentInput = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[800],
      body: Padding(
        padding: EdgeInsets.only(top: 40.0, bottom: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() => currentInput = 0);
              },
              child: Text(
                'Tap to delete',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Center(
              child: Text(
                currentInput.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getFontSize(currentInput.toString()) - 10.0,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            numberRow(
              number1: 1, 
              number2: 2, 
              number3: 3, 
              color1: Colors.indigo, 
              color2: Colors.white,
              updateCurrentInput: updateCurrentInput,
              currentInputValue: currentInput
            ),
            numberRow(
              number1: 4, 
              number2: 5, 
              number3: 6, 
              color1: Colors.indigo, 
              color2: Colors.white,
              updateCurrentInput: updateCurrentInput,
              currentInputValue: currentInput
            ),
            numberRow(
              number1: 7, 
              number2: 8, 
              number3: 9, 
              color1: Colors.indigo, 
              color2: Colors.white,
              updateCurrentInput: updateCurrentInput,
              currentInputValue: currentInput
            ),
            finalRow(
              color1: Colors.indigo,
              color2: Colors.white,
              updateCurrentInput: updateCurrentInput,
              currentInputValue: currentInput,
              context: context,
              fromCurrency: widget.originalCurrency,
              toCurrency: widget.convertedCurrency,
              isWhite: false
            )
          ],
        ),
      ),
    );
  }
}