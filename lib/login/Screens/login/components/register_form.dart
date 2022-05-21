import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_travel_ui/login/constants.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import '../../../../models/constants.dart';
import '../../../../models/round_button.dart';
import '../../../../screens/home_screen.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    Key key,
    @required this.isLogin,
    @required this.animationDuration,
    @required this.size,
    @required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    String email;
    String name;
    String password;
    bool showSpinner = false;
    User user;

    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: AnimatedOpacity(
        opacity: widget.isLogin ? 0.0 : 1.0,
        duration: widget.animationDuration * 5,
        child: Visibility(
          visible: !widget.isLogin,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: widget.size.width,
              height: widget.defaultLoginSize,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 24.0),
                    Text(
                      'Sign Up',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    SizedBox(height: 40),
                    SvgPicture.asset('assets/images/register.svg'),
                    SizedBox(height: 40),
                    SizedBox(height: 24.0),
                    TextField(
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          name = value;
                          //Do something with the user input.
                        },
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Enter your Name')),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          email = value;
                        },
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Enter your email')),
                    SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                        obscureText: true,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          password = value;
                        },
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Enter your Password')),
                    SizedBox(
                      height: 24.0,
                    ),
                    RoundedButton(
                      colour: kPrimaryColor,
                      title: 'Register',
                      onPressed: () async {
                        setState(() {
                          showSpinner = true;
                        });
                        try {
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email.trim(), password: password);
                          user = FirebaseAuth.instance.currentUser;
                          await user.updateDisplayName(name);
                          await user.updatePhotoURL('http://i.imgur.com/zL4Krbz.jpg');
                          await user.reload();
                          
                          if (newUser != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          }
                        } catch (e) {
                          print(e);
                        }
                        setState(() {
                          showSpinner = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
