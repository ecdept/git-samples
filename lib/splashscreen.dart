import 'dart:async';

import 'package:flutter/material.dart';
import 'package:git_samples/home_screen.dart';
import 'package:git_samples/loginscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

     Timer(Duration(seconds: 3), ()
    {
      checkPrefvalue();
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
Future<void> checkPrefvalue()async{

  final sharedPref=await SharedPreferences.getInstance();
 final  Keyvalue=sharedPref.getBool(key);
  if(Keyvalue==null ||Keyvalue==false)
    {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => LoginScreen()));
    }
  else{
    print('ok');
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => HomeScreen()));
  }
}
}
