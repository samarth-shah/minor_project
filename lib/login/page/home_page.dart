
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/screens/home_screen.dart';

import '../Screens/login/login.dart';

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting)
        return Center(child: CircularProgressIndicator(),);
        else if (snapshot.hasData)
        return HomeScreen();
        else if (snapshot.hasError)
        return Center(child: Text("Something Went Wrong!"),);
        else
        return LoginScreen();
      }
    ),
  );
}