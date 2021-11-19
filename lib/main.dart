import 'package:flutter/material.dart';
import 'package:git_samples/splashscreen.dart';
//import 'package:splash_screen/splashscreen.dart';
String key='';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: SplashScreen(),
    );
  }
}
