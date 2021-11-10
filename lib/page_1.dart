import 'package:flutter/material.dart';
import 'package:splash_screen/loginsceen.dart';

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
          child: Image.asset('assets/Ecimage.jpg',height: 300),),
      ),
    );
  }

  Future<void>gotoLogin()async{
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
