import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/Translator/splash_screen.dart';

class MyTApp extends StatelessWidget {
  const MyTApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Text To Speach',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      
    );
    
  }
}