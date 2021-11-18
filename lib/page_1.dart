import 'package:flutter/material.dart';
import 'package:git_samples/login.dart';
//gimport 'package:splash_screen/loginsceen.dart';

class SplashScreen extends StatefulWidget {


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    gotoLogin();
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
    await Future.delayed(Duration(seconds: 8));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
