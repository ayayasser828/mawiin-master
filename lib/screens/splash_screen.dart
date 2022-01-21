import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/providers/user_preferences.dart';
import 'package:mawiin/screens/registration1_screen.dart';
import 'package:mawiin/screens/registration2_screen.dart';
import 'package:mawiin/screens/walkthrough.dart';
import 'package:mawiin/services/auth.dart';
import 'package:mawiin/widgets/bottom_nav_bar_widget.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  UserPreferences userPreferences;
  @override
  void initState() {
    /// get user data
    Auth().auth.authStateChanges().listen((User user) {
      if(user == null){
        print("User is currently signed out!");
        return Registration1Screen();
      } else {
        print("User is signed in!");
        return BottomBar(index: 3,);
      }
    });
      // TODO: implement initState of getCurrent user
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(WalkthroughScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorM24,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          width: 242.17,
          height: 336.37,
          child: SafeArea(
            child: Center(
              child: Image.asset(
                "assets/images/mawiin.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
