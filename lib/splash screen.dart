import 'dart:async';

import 'package:flutter/material.dart';
import 'package:git_samples/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screen_2.dart';
//gimport 'package:splash_screen/loginsceen.dart';

class SplashScreen extends StatefulWidget {


  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Timer(Duration(seconds: 3), (){
     checkpreferencevalue();
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ClipRRect(borderRadius: BorderRadius.circular(300),
              child: Image.asset('assets/dragon.jpg',height: 300)),),
      ),
    );
  }
  Future<void>gotoLogin()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
  }
  Future<void> checkpreferencevalue()async {
    final sharedpref=await SharedPreferences.getInstance();
    final getvalue1=sharedpref.getString('key1');
    final getvalue2=sharedpref.getString('key2');
    if(getvalue1==null || getvalue1.isEmpty)
    {
      if(getvalue2==null || getvalue2.isEmpty){
        gotoLogin();
      }
    }
    else{
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenTwo()));
    }
  }
}



