import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/login/provider/google_sign_in.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';
import '../../../../models/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../models/round_button.dart';
import '../../../../screens/home_screen.dart';
import '../../../constants.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
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
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    String email;
    String password;
    bool showSpinner = false;
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: AnimatedOpacity(
        opacity: widget.isLogin ? 1.0 : 0.0,
        duration: widget.animationDuration * 4,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: widget.size.width,
            height: widget.defaultLoginSize,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SIGN IN',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(height: 40),
                  SvgPicture.asset('assets/images/login.svg'),
                  SizedBox(height: 40),
                  TextField(
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                        // icon: Icon(Icons.mail, color: kPrimaryColor),
                        hintText: 'Enter your Email'),
                    cursorColor: kPrimaryColor,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Enter your Password'),
                    cursorColor: kPrimaryColor,
                  ),
                  SizedBox(height: 10),
                  RoundedButton(
                      colour: kPrimaryColor,
                      title: 'Log In',
                      onPressed: () async {
                        setState(() {
                          showSpinner = true;
                        });
                        try {
                          final user = await _auth.signInWithEmailAndPassword(
                              email: email.trim(), password: password);
                          if (user != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                            Fluttertoast.showToast(msg: 'Sucessfully Entered!');
                          } else
                            Fluttertoast.showToast(
                                msg: 'Email / Password Invalid');
                        } catch (e) {
                          Fluttertoast.showToast(msg: e);
                          print(e);
                        }
                        setState(() {
                          showSpinner = false;
                        });
                      }),
                  Center(child: Text("OR")),
                  SizedBox(height: 10),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(primary: kPrimaryColor),
                    icon: FaIcon(FontAwesomeIcons.google),
                    onPressed: () {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.googleLogin();
                    },
                    label: Text("Sign In with Google"),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
