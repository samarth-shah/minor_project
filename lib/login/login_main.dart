import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/login/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
import './Screens/login/login.dart';
import 'constants.dart';
import 'page/home_page.dart';

class LoginMainScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        title: 'Trippy Login',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: kPrimaryColor,
        ),
        home: HomePage1(),
      ),
    );
  }
}
