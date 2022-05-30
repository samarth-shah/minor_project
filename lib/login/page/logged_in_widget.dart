// ignore_for_file: deprecated_member_use
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/login/provider/google_sign_in.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import '../../screens/welcome.dart';

class LoggedInWidget extends StatefulWidget {
  @override
  State<LoggedInWidget> createState() => _LoggedInWidgetState();
}

class _LoggedInWidgetState extends State<LoggedInWidget> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.indigo,
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    if (provider.counter == 0) {
                      FirebaseAuth.instance.signOut();
                      Fluttertoast.showToast(
                          msg: '${user.displayName} LoggedOut Sucessfully');
                    } else {
                      provider.logOut();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomePage()));
                      Fluttertoast.showToast(
                          msg: '${user.displayName} LoggedOut Sucessfully');
                    }
                  },
                  child: const Text('LogOut'),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
         color: Colors.white,
         padding: EdgeInsets.only(top:80, bottom: 80, left: 1, right: 1),
        child: Card(
          elevation: 2,
          color: Colors.indigo,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
          
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(user.photoURL) ??
                  NetworkImage(
                      'https://cdn2.iconfinder.com/data/icons/instagram-ui/48/jee-74-512.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "   Name: " + user.displayName + '  ',
              style: TextStyle(fontSize: 25,color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "     E-Mail: " + user.email + '      ',
              style: TextStyle(fontSize: 25,color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            /* Text("Image: " + user.photoURL,style: TextStyle(fontSize: 18),),
            SizedBox(height: 10,), */
          ]),
        ),
      ),
    );
  }
}
