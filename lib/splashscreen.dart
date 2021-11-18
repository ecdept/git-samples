import 'dart:async';

import 'package:flutter/material.dart';
import 'package:git_samples/loginscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //gotoLogin();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(1800),
              child: Image.asset('assets/rjtech.jpg', height: 300)),
        ),
      ),
    );
  }

  Future<void> gotoLogin() async {
    //await Future.delayed(Duration(seconds: 5));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
