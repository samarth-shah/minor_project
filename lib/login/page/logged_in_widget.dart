import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/login/login_main.dart';
import 'package:flutter_travel_ui/login/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

class LoggedInWidget extends StatefulWidget {
  @override
  State<LoggedInWidget> createState() => _LoggedInWidgetState();
}

class _LoggedInWidgetState extends State<LoggedInWidget> {
  /* void refresh() async{
    final user = FirebaseAuth.instance.currentUser;
    await user.reload();
  } */
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        title: Text("LoggedIn"),
        centerTitle: true,
        actions: [
          TextButton(
            child: Text('Logout', style: TextStyle(color: Colors.white, fontSize: 14),),
            onPressed: () {
              final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
              if(provider.counter == 0)
              FirebaseAuth.instance.signOut();
              else
              provider.logOut();
              Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage1()));
            },
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade200,
        child: Column(children: [
          SizedBox(height: 160,),
          Text("Profile",style: TextStyle(fontSize: 25),),
          SizedBox(height: 10,),
          CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(user.photoURL),
          ),
          SizedBox(height: 10,),
          Text("Name: " + user.displayName, style: TextStyle(fontSize: 25),),
          SizedBox(height: 10,),
          Text("E-Mail: " + user.email,style: TextStyle(fontSize: 25),),
          SizedBox(height: 10,),
          /* Text("Image: " + user.photoURL,style: TextStyle(fontSize: 18),),
          SizedBox(height: 10,), */
        ]),
      ),
    );
  }
}
